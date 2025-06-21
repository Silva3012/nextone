import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required String uid,
  }) = _SignUpResponse;

  factory SignUpResponse.fromUserCredential(UserCredential userCredential) {
    return SignUpResponse(uid: userCredential.user!.uid);
  }

  factory SignUpResponse.empty() => const SignUpResponse(uid: '');

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
