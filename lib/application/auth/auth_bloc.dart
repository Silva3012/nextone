import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone/data/models/models.dart';
import 'package:nextone/data/repositories/interfaces/i_artist_repository.dart';
import 'package:nextone/data/repositories/interfaces/i_user_repository.dart';
import 'package:nextone/data/services/interfaces/i_auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@LazySingleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService _authService;
  final IUserRepository _userRepository;
  final IArtistRepository _artistRepository;
  late final StreamSubscription<String?> _authStateSubscription;
  // This flag is used to suppress the auth changed event during sign up
  // to prevent emitting an authenticated state before the user role is selected.
  // This is a temporary solution until we implement a proper user role selection flow.
  bool _suppressAuthChanged = false;

  AuthBloc(this._authService, this._userRepository, this._artistRepository)
      : super(const AuthState.unknown()) {
    _authStateSubscription =
        _authService.getAuthStateChanges.listen((uid) async {
      if (_suppressAuthChanged) return;

      if (uid != null) {
        final user = await _userRepository.getUser(userId: uid);
        if (user != null) {
          add(AuthEvent.onAuthChanged(user: user));
        } else {
          // Role has not been selected yet
          final currentUser = Supabase.instance.client.auth.currentUser;
          if (currentUser != null) {
            add(AuthEvent.onAuthChanged(
                user: UserCredentialsDto(
              uid: currentUser.id,
              email: currentUser.email ?? '',
              role: '',
              profileCompleted: false,
              createdAt: null,
            )));
          }
        }
      } else {
        add(AuthEvent.onAuthChanged(user: UserCredentialsDto.empty()));
      }
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        onAuthChanged: (e) async {
          final user = e.user;
          if (user == null || user.uid.isEmpty) {
            emit(const AuthState.unauthenticated());
            return;
          }

          if (user.role == null || user.role!.isEmpty) {
            emit(
                AuthState.needsRoleSelection(email: user.email, uid: user.uid));
          } else if (user.profileCompleted != true) {
            log('Redirecting to onboarding for ${user.uid}');
            emit(AuthState.needsOnboarding(user: user));
          } else {
            emit(AuthState.authenticated(user: user));
          }
        },
        onSignUpRequested: (e) async {
          emit(const AuthState.loading());
          try {
            _suppressAuthChanged = true;
            final uid = await _authService.signUpWithEmailAndPassword(
                email: e.email, password: e.password);
            emit(AuthState.needsRoleSelection(uid: uid, email: e.email));
          } catch (error) {
            final errorMessage = _getErrorMessage(error);
            emit(AuthState.error(message: errorMessage));
          }
        },
        onLoginRequested: (e) async {
          emit(const AuthState.loading());
          try {
            final uid = await _authService.logInWithEmailAndPassword(
                email: e.email, password: e.password);
            final user = await _userRepository.getUser(userId: uid);
            if (user != null) {
              if (user.role == null || user.role!.isEmpty) {
                emit(AuthState.needsRoleSelection(
                    email: user.email, uid: user.uid));
              } else if (user.profileCompleted != true) {
                emit(AuthState.needsOnboarding(user: user));
              } else {
                log('User logged in: ${user.uid} — profileCompleted: ${user.profileCompleted}');
                emit(AuthState.authenticated(user: user));
              }
            } else {
              //TODO(auth) User not found in the repository, handle accordingly
              emit(const AuthState.error(
                  message: 'User account not found. Please contact support.'));
            }
          } catch (error) {
            final errorMessage = _getErrorMessage(error);
            emit(AuthState.error(message: errorMessage));
          }
        },
        onRoleSelected: (e) async {
          emit(const AuthState.loading());
          try {
            final user = UserCredentialsDto(
              uid: e.uid,
              email: e.email,
              role: e.role,
              profileCompleted: false,
              createdAt: DateTime.now(),
            );
            await _userRepository.saveUserWithRole(userCredentials: user);
            emit(AuthState.needsOnboarding(user: user));
          } catch (error) {
            final errorMessage = _getErrorMessage(error);
            emit(AuthState.error(message: errorMessage));
          }
        },
        onProfileCompleted: (e) async {
          emit(const AuthState.loading());
          try {
            final completedUser = e.user.copyWith(profileCompleted: true);
            await _userRepository.saveUserWithRole(
                userCredentials: completedUser);
            emit(AuthState.authenticated(user: completedUser));
          } catch (error) {
            final errorMessage = _getErrorMessage(error);
            emit(AuthState.error(message: errorMessage));
          }
        },
        onSignOutRequested: (e) async {
          emit(const AuthState.loading());
          await _authService.signOut();
          emit(const AuthState.unauthenticated());
        },
        completeOnboarding: (e) async {
          emit(const AuthState.loading());
          try {
            // 1. Create artist profile
            final artist = ArtistDto(
              userId: e.user.uid,
              artistId: e.user.uid, // Using userId as artistId
              stageName: e.stageName,
              location: e.location,
              biography: e.biography,
              genre: e.genre,
              createdAt: DateTime.now(),
            );
            await _artistRepository.saveArtist(artist: artist);
            // 2. Upload profile image
            final imageUrl = await _artistRepository.uploadProfileImage(
              artistId: e.user.uid,
              filePath: e.profileImage.path,
            );
            // 3. Update artist profile with image URL
            await _artistRepository.updateProfilePictureUrl(
              artistId: e.user.uid,
              profilePictureUrl: imageUrl,
            );
            // 4. Mark user as profile completed
            final completedUser = e.user.copyWith(profileCompleted: true);
            await _userRepository.saveUserWithRole(
                userCredentials: completedUser);
            emit(AuthState.authenticated(user: completedUser));
          } catch (error) {
            final errorMessage = _getErrorMessage(error);
            emit(AuthState.error(message: errorMessage));
          }
        },
        onForgotPasswordRequested: (e) async {
          emit(const AuthState.loading());
          try {
            await _authService.sendPasswordResetEmail(email: e.email);
            emit(const AuthState.forgotPasswordEmailSent());
          } catch (error) {
            emit(AuthState.forgotPasswordError(
                message: _getErrorMessage(error)));
          }
        },
      );
    });
  }

  /// Converts various error types to user-friendly messages
  String _getErrorMessage(dynamic error) {
    if (error is AuthException) {
      switch (error.message) {
        case 'Invalid login credentials':
          return 'Invalid email or password. Please try again.';
        case 'Email not confirmed':
          return 'Please check your email and confirm your account before signing in.';
        case 'User already registered':
          return 'An account with this email already exists. Please try signing in instead.';
        case 'Password should be at least 6 characters':
          return 'Password must be at least 6 characters long.';
        case 'Unable to validate email address: invalid format':
          return 'Please enter a valid email address.';
        default:
          return error.message;
      }
    } else if (error is SocketException) {
      return 'Network error. Please check your connection and try again.';
    } else if (error is TimeoutException) {
      return 'An unexpected error occurred. Please try again.';
    } else if (error.toString().contains('SocketException') ||
        error.toString().contains('Failed host lookup') ||
        error.toString().contains('nodename nor servname provided')) {
      return 'Network error. Please check your connection and try again.';
    } else {
      return 'An unexpected error occurred. Please try again.';
    }
  }

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}
