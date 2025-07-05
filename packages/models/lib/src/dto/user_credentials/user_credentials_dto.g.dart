// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCredentialsDtoImpl _$$UserCredentialsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCredentialsDtoImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      role: json['role'] as String?,
      profileCompleted: json['profile_completed'] as bool? ?? false,
      createdAt: _fromTimestamp(json['created_at']),
    );

Map<String, dynamic> _$$UserCredentialsDtoImplToJson(
        _$UserCredentialsDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'role': instance.role,
      'profile_completed': instance.profileCompleted,
      'created_at': _toTimestamp(instance.createdAt),
    };
