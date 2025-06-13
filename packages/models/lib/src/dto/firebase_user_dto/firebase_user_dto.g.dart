// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseUserDtoImpl _$$FirebaseUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseUserDtoImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$FirebaseUserDtoImplToJson(
        _$FirebaseUserDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
    };
