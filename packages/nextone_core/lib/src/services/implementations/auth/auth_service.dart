import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone_core/src/services/services_exports.dart';

@LazySingleton(as: IAuthService)
class AuthService implements IAuthService {
  final FirebaseAuth firebaseAuth;

  AuthService({required this.firebaseAuth});

  @override
  Stream<String?> get getAuthStateChanges =>
      firebaseAuth.authStateChanges().map((user) => user?.uid);

  @override
  Future<String> logInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user?.uid ?? '';
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) {
    try {
      return firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> signOut() {
    try {
      return firebaseAuth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<String> signUpWithEmailAndPassword(
      {required String email,
      required String password,
      String? username}) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user?.uid ?? '';
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
