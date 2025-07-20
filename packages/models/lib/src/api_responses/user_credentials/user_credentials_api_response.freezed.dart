// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_credentials_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCredentialsApiResponse _$UserCredentialsApiResponseFromJson(
    Map<String, dynamic> json) {
  return _UserCredentialsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$UserCredentialsApiResponse {
  @JsonKey(name: 'uid')
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'profileCompleted')
  bool get profileCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserCredentialsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCredentialsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCredentialsApiResponseCopyWith<UserCredentialsApiResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsApiResponseCopyWith<$Res> {
  factory $UserCredentialsApiResponseCopyWith(UserCredentialsApiResponse value,
          $Res Function(UserCredentialsApiResponse) then) =
      _$UserCredentialsApiResponseCopyWithImpl<$Res,
          UserCredentialsApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'profileCompleted') bool profileCompleted,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt});
}

/// @nodoc
class _$UserCredentialsApiResponseCopyWithImpl<$Res,
        $Val extends UserCredentialsApiResponse>
    implements $UserCredentialsApiResponseCopyWith<$Res> {
  _$UserCredentialsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCredentialsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? role = null,
    Object? profileCompleted = null,
    Object? createdAt = freezed,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      profileCompleted: null == profileCompleted
          ? _value.profileCompleted
          : profileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCredentialsApiResponseImplCopyWith<$Res>
    implements $UserCredentialsApiResponseCopyWith<$Res> {
  factory _$$UserCredentialsApiResponseImplCopyWith(
          _$UserCredentialsApiResponseImpl value,
          $Res Function(_$UserCredentialsApiResponseImpl) then) =
      __$$UserCredentialsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uid') String uid,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'profileCompleted') bool profileCompleted,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt});
}

/// @nodoc
class __$$UserCredentialsApiResponseImplCopyWithImpl<$Res>
    extends _$UserCredentialsApiResponseCopyWithImpl<$Res,
        _$UserCredentialsApiResponseImpl>
    implements _$$UserCredentialsApiResponseImplCopyWith<$Res> {
  __$$UserCredentialsApiResponseImplCopyWithImpl(
      _$UserCredentialsApiResponseImpl _value,
      $Res Function(_$UserCredentialsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCredentialsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? role = null,
    Object? profileCompleted = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$UserCredentialsApiResponseImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      profileCompleted: null == profileCompleted
          ? _value.profileCompleted
          : profileCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCredentialsApiResponseImpl implements _UserCredentialsApiResponse {
  const _$UserCredentialsApiResponseImpl(
      {@JsonKey(name: 'uid') required this.uid,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'role') required this.role,
      @JsonKey(name: 'profileCompleted') required this.profileCompleted,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      this.createdAt});

  factory _$UserCredentialsApiResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserCredentialsApiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'uid')
  final String uid;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'role')
  final String role;
  @override
  @JsonKey(name: 'profileCompleted')
  final bool profileCompleted;
  @override
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserCredentialsApiResponse(uid: $uid, email: $email, role: $role, profileCompleted: $profileCompleted, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCredentialsApiResponseImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.profileCompleted, profileCompleted) ||
                other.profileCompleted == profileCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, role, profileCompleted, createdAt);

  /// Create a copy of UserCredentialsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCredentialsApiResponseImplCopyWith<_$UserCredentialsApiResponseImpl>
      get copyWith => __$$UserCredentialsApiResponseImplCopyWithImpl<
          _$UserCredentialsApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCredentialsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _UserCredentialsApiResponse
    implements UserCredentialsApiResponse {
  const factory _UserCredentialsApiResponse(
      {@JsonKey(name: 'uid') required final String uid,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'role') required final String role,
      @JsonKey(name: 'profileCompleted') required final bool profileCompleted,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      final DateTime? createdAt}) = _$UserCredentialsApiResponseImpl;

  factory _UserCredentialsApiResponse.fromJson(Map<String, dynamic> json) =
      _$UserCredentialsApiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'uid')
  String get uid;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'role')
  String get role;
  @override
  @JsonKey(name: 'profileCompleted')
  bool get profileCompleted;
  @override
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt;

  /// Create a copy of UserCredentialsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCredentialsApiResponseImplCopyWith<_$UserCredentialsApiResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
