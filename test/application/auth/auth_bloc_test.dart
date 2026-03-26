import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nextone/application/auth/auth_bloc.dart';
import 'package:nextone/data/models/models.dart';
import 'package:nextone/data/repositories/interfaces/i_artist_repository.dart';
import 'package:nextone/data/repositories/interfaces/i_user_repository.dart';
import 'package:nextone/data/services/interfaces/i_auth_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart' show AuthException;

class _MockAuthService extends Mock implements IAuthService {}

class _MockUserRepository extends Mock implements IUserRepository {}

class _MockArtistRepository extends Mock implements IArtistRepository {}

void main() {
  late _MockAuthService authService;
  late _MockUserRepository userRepository;
  late _MockArtistRepository artistRepository;
  late StreamController<String?> authStateController;

  const email = 'artist@example.com';
  const password = 'secret123';
  const uid = 'user-123';

  final authenticatedUser = UserCredentialsDto(
    uid: uid,
    email: email,
    role: 'artist',
    profileCompleted: true,
    createdAt: DateTime(2024),
  );

  final userWithoutRole = authenticatedUser.copyWith(role: '');

  setUp(() {
    authService = _MockAuthService();
    userRepository = _MockUserRepository();
    artistRepository = _MockArtistRepository();
    authStateController = StreamController<String?>.broadcast();

    when(() => authService.getAuthStateChanges)
        .thenAnswer((_) => authStateController.stream);
  });

  tearDown(() async {
    await authStateController.close();
  });

  AuthBloc buildBloc() => AuthBloc(authService, userRepository, artistRepository);

  test('emits loading then authenticated when login succeeds with completed user',
      () async {
      when(
        () => authService.logInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer((_) async => uid);
      when(() => userRepository.getUser(userId: uid))
          .thenAnswer((_) async => authenticatedUser);

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<AuthState>[
          const AuthState.loading(),
          AuthState.authenticated(user: authenticatedUser),
        ]),
      );

      bloc.add(const AuthEvent.onLoginRequested(email: email, password: password));

      await expectation;
      verify(
        () => authService.logInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).called(1);
      verify(() => userRepository.getUser(userId: uid)).called(1);
      await bloc.close();
    });

  test('emits loading then error when login fails', () async {
      when(
        () => authService.logInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenThrow(const AuthException('Invalid login credentials'));

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<AuthState>[
          const AuthState.loading(),
          const AuthState.error(
            message: 'Invalid email or password. Please try again.',
          ),
        ]),
      );

      bloc.add(const AuthEvent.onLoginRequested(email: email, password: password));

      await expectation;
      await bloc.close();
    });

  test('emits loading then needsRoleSelection when login succeeds without a role',
      () async {
      when(
        () => authService.logInWithEmailAndPassword(
          email: email,
          password: password,
        ),
      ).thenAnswer((_) async => uid);
      when(() => userRepository.getUser(userId: uid))
          .thenAnswer((_) async => userWithoutRole);

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<AuthState>[
          const AuthState.loading(),
          const AuthState.needsRoleSelection(uid: uid, email: email),
        ]),
      );

      bloc.add(const AuthEvent.onLoginRequested(email: email, password: password));

      await expectation;
      await bloc.close();
    });

  test(
      'emits loading then forgotPasswordEmailSent when password reset succeeds',
      () async {
      when(() => authService.sendPasswordResetEmail(email: email))
          .thenAnswer((_) async {});

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<AuthState>[
          const AuthState.loading(),
          const AuthState.forgotPasswordEmailSent(),
        ]),
      );

      bloc.add(const AuthEvent.onForgotPasswordRequested(email: email));

      await expectation;
      verify(() => authService.sendPasswordResetEmail(email: email)).called(1);
      await bloc.close();
    });

  test('emits loading then unauthenticated when sign out succeeds', () async {
      when(() => authService.signOut()).thenAnswer((_) async {});

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<AuthState>[
          const AuthState.loading(),
          const AuthState.unauthenticated(),
        ]),
      );

      bloc.add(const AuthEvent.onSignOutRequested());

      await expectation;
      verify(() => authService.signOut()).called(1);
      await bloc.close();
    });
}
