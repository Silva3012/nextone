// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseUserDto _$FirebaseUserDtoFromJson(Map<String, dynamic> json) {
  return _FirebaseUserDto.fromJson(json);
}

/// @nodoc
mixin _$FirebaseUserDto {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Serializes this FirebaseUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseUserDtoCopyWith<FirebaseUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserDtoCopyWith<$Res> {
  factory $FirebaseUserDtoCopyWith(
          FirebaseUserDto value, $Res Function(FirebaseUserDto) then) =
      _$FirebaseUserDtoCopyWithImpl<$Res, FirebaseUserDto>;
  @useResult
  $Res call({String uid, String email, String? displayName, String? photoUrl});
}

/// @nodoc
class _$FirebaseUserDtoCopyWithImpl<$Res, $Val extends FirebaseUserDto>
    implements $FirebaseUserDtoCopyWith<$Res> {
  _$FirebaseUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseUserDtoImplCopyWith<$Res>
    implements $FirebaseUserDtoCopyWith<$Res> {
  factory _$$FirebaseUserDtoImplCopyWith(_$FirebaseUserDtoImpl value,
          $Res Function(_$FirebaseUserDtoImpl) then) =
      __$$FirebaseUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String? displayName, String? photoUrl});
}

/// @nodoc
class __$$FirebaseUserDtoImplCopyWithImpl<$Res>
    extends _$FirebaseUserDtoCopyWithImpl<$Res, _$FirebaseUserDtoImpl>
    implements _$$FirebaseUserDtoImplCopyWith<$Res> {
  __$$FirebaseUserDtoImplCopyWithImpl(
      _$FirebaseUserDtoImpl _value, $Res Function(_$FirebaseUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$FirebaseUserDtoImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseUserDtoImpl implements _FirebaseUserDto {
  const _$FirebaseUserDtoImpl(
      {required this.uid,
      required this.email,
      this.displayName,
      this.photoUrl});

  factory _$FirebaseUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseUserDtoImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'FirebaseUserDto(uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseUserDtoImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, displayName, photoUrl);

  /// Create a copy of FirebaseUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseUserDtoImplCopyWith<_$FirebaseUserDtoImpl> get copyWith =>
      __$$FirebaseUserDtoImplCopyWithImpl<_$FirebaseUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseUserDtoImplToJson(
      this,
    );
  }
}

abstract class _FirebaseUserDto implements FirebaseUserDto {
  const factory _FirebaseUserDto(
      {required final String uid,
      required final String email,
      final String? displayName,
      final String? photoUrl}) = _$FirebaseUserDtoImpl;

  factory _FirebaseUserDto.fromJson(Map<String, dynamic> json) =
      _$FirebaseUserDtoImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String? get displayName;
  @override
  String? get photoUrl;

  /// Create a copy of FirebaseUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseUserDtoImplCopyWith<_$FirebaseUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
