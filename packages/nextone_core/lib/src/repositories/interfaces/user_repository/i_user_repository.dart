import 'package:models/models.dart';

abstract class IUserRepository {
  Future<void> saveUserWithRole({required UserCredentialsDto userCredentials});
  Future<UserCredentialsDto?> getUser({required String userId});
}
