import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository({
    required this.firestore,
  });
  final FirebaseFirestore firestore;
  @override
  Future<UserCredentialsDto?> getUser({required String userId}) async {
    try {
      final user = await firestore.collection('users').doc(userId).get();
      return UserCredentialsDto.fromJson(user.data() ?? {});
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> saveUserWithRole(
      {required UserCredentialsDto userCredentials}) async {
    try {
      await firestore.collection('users').doc(userCredentials.uid).set({
        ...userCredentials.toJson(),
        'createdAt': FieldValue.serverTimestamp()
      });
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
