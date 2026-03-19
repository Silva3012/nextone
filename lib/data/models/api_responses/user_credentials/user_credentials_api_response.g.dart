// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCredentialsApiResponseImpl _$$UserCredentialsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCredentialsApiResponseImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      profileCompleted: json['profileCompleted'] as bool,
      createdAt: _fromTimestamp(json['createdAt']),
    );

Map<String, dynamic> _$$UserCredentialsApiResponseImplToJson(
        _$UserCredentialsApiResponseImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'role': instance.role,
      'profileCompleted': instance.profileCompleted,
      'createdAt': _toTimestamp(instance.createdAt),
    };
