import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:nextone_core/src/repositories/repositories_export.dart';
import 'package:nextone_core/src/services/services_exports.dart';

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
          } else if (!user.profileCompleted) {
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
          } catch (e) {
            emit(const AuthState.unauthenticated());
            addError(e, StackTrace.current);
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
              } else if (!user.profileCompleted) {
                emit(AuthState.needsOnboarding(user: user));
              } else {
                log('User logged in: ${user.uid} — profileCompleted: ${user.profileCompleted}');
                emit(AuthState.authenticated(user: user));
              }
            } else {
              //TODO(auth) User not found in the repository, handle accordingly
              emit(const AuthState.unauthenticated());
            }
          } catch (e) {
            emit(const AuthState.unauthenticated());
            addError(e, StackTrace.current);
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
          } catch (e) {
            emit(const AuthState.unauthenticated());
            addError(e, StackTrace.current);
          }
        },
        onProfileCompleted: (e) async {
          emit(const AuthState.loading());
          try {
            final completedUser = e.user.copyWith(profileCompleted: true);
            await _userRepository.saveUserWithRole(
                userCredentials: completedUser);
            emit(AuthState.authenticated(user: completedUser));
          } catch (e) {
            emit(const AuthState.unauthenticated());
            addError(e, StackTrace.current);
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
            await _artistRepository.updateProdilePictureUrl(
              artistId: e.user.uid,
              profilePictureUrl: imageUrl,
            );
            // 4. Mark user as profile completed
            final completedUser = e.user.copyWith(profileCompleted: true);
            await _userRepository.saveUserWithRole(
                userCredentials: completedUser);
            emit(AuthState.authenticated(user: completedUser));
          } catch (err) {
            emit(const AuthState.unauthenticated());
            addError(err, StackTrace.current);
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}
