import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:nextone_core/src/services/services_exports.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@LazySingleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService _authService;
  late final StreamSubscription<String?> _authStateSubscription;
  // This flag is used to suppress the auth changed event during sign up
  // to prevent emitting an authenticated state before the user role is selected.
  // This is a temporary solution until we implement a proper user role selection flow.
  bool _suppressAuthChanged = false;

  AuthBloc(this._authService) : super(const AuthState.unknown()) {
    _authStateSubscription =
        _authService.getAuthStateChanges.listen((uid) async {
      if (uid != null) {
        // TODO (auth): Load user data from repository/Firestore
        // For now, we will just emit authenticated state with the user object
        final currentUser = FirebaseAuth.instance.currentUser;
        if (currentUser != null) {
          add(AuthEvent.onAuthChanged(
              user: UserCredentialsDto(
            uid: currentUser.uid,
            email: currentUser.email ?? '',
            role: null,
          )));
        }
      } else {
        add(AuthEvent.onAuthChanged(user: UserCredentialsDto.empty()));
      }
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        onAuthChanged: (e) async {
          if (_suppressAuthChanged) return;

          if (e.user!.uid.isNotEmpty) {
            emit(AuthState.authenticated(user: e.user!));
          } else {
            emit(const AuthState.unauthenticated());
          }
        },
        onSignUpRequested: (e) async {
          emit(const AuthState.loading());
          try {
            _suppressAuthChanged = true;
            final uid = await _authService.signUpWithEmailAndPassword(
                email: e.email, password: e.password);
            emit(AuthState.needsRoleSelection(uid: uid, email: e.email));
            // _suppressAuthChanged = false;
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
            // TODO (auth): Load user data from repository/Firestore
            emit(AuthState.authenticated(
                user:
                    UserCredentialsDto(uid: uid, email: e.email, role: null)));
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
      );
    });
  }

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}
