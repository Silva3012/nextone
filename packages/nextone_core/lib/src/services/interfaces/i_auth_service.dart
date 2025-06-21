abstract class IAuthService {
  /// Returns the current user as a stream.
  Stream<String?> get getAuthStateChanges;

  /// Logs in a user with email and password.
  Future<String> logInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs up a user with email and password.
  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? username,
  });

  /// Signs out the current user.
  Future<void> signOut();

  /// Resets the password for the given email.
  Future<void> resetPassword(String email);
}
