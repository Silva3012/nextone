// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCredentialsDto _$UserCredentialsDtoFromJson(Map<String, dynamic> json) {
  return _UserCredentialsDto.fromJson(json);
}

/// @nodoc
mixin _$UserCredentialsDto {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;

  /// Serializes this UserCredentialsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCredentialsDtoCopyWith<UserCredentialsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsDtoCopyWith<$Res> {
  factory $UserCredentialsDtoCopyWith(
          UserCredentialsDto value, $Res Function(UserCredentialsDto) then) =
      _$UserCredentialsDtoCopyWithImpl<$Res, UserCredentialsDto>;
  @useResult
  $Res call({String uid, String email, String? role});
}

/// @nodoc
class _$UserCredentialsDtoCopyWithImpl<$Res, $Val extends UserCredentialsDto>
    implements $UserCredentialsDtoCopyWith<$Res> {
  _$UserCredentialsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? role = freezed,
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
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCredentialsDtoImplCopyWith<$Res>
    implements $UserCredentialsDtoCopyWith<$Res> {
  factory _$$UserCredentialsDtoImplCopyWith(_$UserCredentialsDtoImpl value,
          $Res Function(_$UserCredentialsDtoImpl) then) =
      __$$UserCredentialsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String? role});
}

/// @nodoc
class __$$UserCredentialsDtoImplCopyWithImpl<$Res>
    extends _$UserCredentialsDtoCopyWithImpl<$Res, _$UserCredentialsDtoImpl>
    implements _$$UserCredentialsDtoImplCopyWith<$Res> {
  __$$UserCredentialsDtoImplCopyWithImpl(_$UserCredentialsDtoImpl _value,
      $Res Function(_$UserCredentialsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? role = freezed,
  }) {
    return _then(_$UserCredentialsDtoImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCredentialsDtoImpl implements _UserCredentialsDto {
  const _$UserCredentialsDtoImpl(
      {required this.uid, required this.email, this.role});

  factory _$UserCredentialsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCredentialsDtoImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String? role;

  @override
  String toString() {
    return 'UserCredentialsDto(uid: $uid, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCredentialsDtoImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, role);

  /// Create a copy of UserCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCredentialsDtoImplCopyWith<_$UserCredentialsDtoImpl> get copyWith =>
      __$$UserCredentialsDtoImplCopyWithImpl<_$UserCredentialsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCredentialsDtoImplToJson(
      this,
    );
  }
}

abstract class _UserCredentialsDto implements UserCredentialsDto {
  const factory _UserCredentialsDto(
      {required final String uid,
      required final String email,
      final String? role}) = _$UserCredentialsDtoImpl;

  factory _UserCredentialsDto.fromJson(Map<String, dynamic> json) =
      _$UserCredentialsDtoImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String? get role;

  /// Create a copy of UserCredentialsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCredentialsDtoImplCopyWith<_$UserCredentialsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
