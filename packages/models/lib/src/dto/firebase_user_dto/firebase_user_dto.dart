import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user_dto.freezed.dart';
part 'firebase_user_dto.g.dart';

@freezed
class FirebaseUserDto with _$FirebaseUserDto {
  const factory FirebaseUserDto({
    required String uid,
    required String email,
    String? displayName,
    String? photoUrl,
  }) = _FirebaseUserDto;

  factory FirebaseUserDto.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserDtoFromJson(json);

  factory FirebaseUserDto.fromFirebaseUser(User user) {
    return FirebaseUserDto(
      uid: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }
}
