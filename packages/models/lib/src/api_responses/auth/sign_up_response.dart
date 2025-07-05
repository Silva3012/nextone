import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.freezed.dart';
part 'sign_up_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required String uid,
  }) = _SignUpResponse;

  factory SignUpResponse.fromSupabaseUser(Map<String, dynamic> user) {
    return SignUpResponse(uid: user['id'] ?? '');
  }

  factory SignUpResponse.empty() => const SignUpResponse(uid: '');

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
