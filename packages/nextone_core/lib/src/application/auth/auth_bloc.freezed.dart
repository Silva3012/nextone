// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnAuthChangedImplCopyWith<$Res> {
  factory _$$OnAuthChangedImplCopyWith(
          _$OnAuthChangedImpl value, $Res Function(_$OnAuthChangedImpl) then) =
      __$$OnAuthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentialsDto? user});

  $UserCredentialsDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$OnAuthChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnAuthChangedImpl>
    implements _$$OnAuthChangedImplCopyWith<$Res> {
  __$$OnAuthChangedImplCopyWithImpl(
      _$OnAuthChangedImpl _value, $Res Function(_$OnAuthChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$OnAuthChangedImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredentialsDto?,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCredentialsDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$OnAuthChangedImpl implements _OnAuthChanged {
  const _$OnAuthChangedImpl({required this.user});

  @override
  final UserCredentialsDto? user;

  @override
  String toString() {
    return 'AuthEvent.onAuthChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAuthChangedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAuthChangedImplCopyWith<_$OnAuthChangedImpl> get copyWith =>
      __$$OnAuthChangedImplCopyWithImpl<_$OnAuthChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onAuthChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onAuthChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onAuthChanged != null) {
      return onAuthChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onAuthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onAuthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onAuthChanged != null) {
      return onAuthChanged(this);
    }
    return orElse();
  }
}

abstract class _OnAuthChanged implements AuthEvent {
  const factory _OnAuthChanged({required final UserCredentialsDto? user}) =
      _$OnAuthChangedImpl;

  UserCredentialsDto? get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnAuthChangedImplCopyWith<_$OnAuthChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSignOutRequestedImplCopyWith<$Res> {
  factory _$$OnSignOutRequestedImplCopyWith(_$OnSignOutRequestedImpl value,
          $Res Function(_$OnSignOutRequestedImpl) then) =
      __$$OnSignOutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSignOutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnSignOutRequestedImpl>
    implements _$$OnSignOutRequestedImplCopyWith<$Res> {
  __$$OnSignOutRequestedImplCopyWithImpl(_$OnSignOutRequestedImpl _value,
      $Res Function(_$OnSignOutRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSignOutRequestedImpl implements _OnSignOutRequested {
  const _$OnSignOutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.onSignOutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnSignOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onSignOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onSignOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onSignOutRequested != null) {
      return onSignOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onSignOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onSignOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onSignOutRequested != null) {
      return onSignOutRequested(this);
    }
    return orElse();
  }
}

abstract class _OnSignOutRequested implements AuthEvent {
  const factory _OnSignOutRequested() = _$OnSignOutRequestedImpl;
}

/// @nodoc
abstract class _$$OnSignUpRequestedImplCopyWith<$Res> {
  factory _$$OnSignUpRequestedImplCopyWith(_$OnSignUpRequestedImpl value,
          $Res Function(_$OnSignUpRequestedImpl) then) =
      __$$OnSignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$OnSignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnSignUpRequestedImpl>
    implements _$$OnSignUpRequestedImplCopyWith<$Res> {
  __$$OnSignUpRequestedImplCopyWithImpl(_$OnSignUpRequestedImpl _value,
      $Res Function(_$OnSignUpRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$OnSignUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSignUpRequestedImpl implements _OnSignUpRequested {
  const _$OnSignUpRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onSignUpRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSignUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSignUpRequestedImplCopyWith<_$OnSignUpRequestedImpl> get copyWith =>
      __$$OnSignUpRequestedImplCopyWithImpl<_$OnSignUpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onSignUpRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onSignUpRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onSignUpRequested != null) {
      return onSignUpRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onSignUpRequested != null) {
      return onSignUpRequested(this);
    }
    return orElse();
  }
}

abstract class _OnSignUpRequested implements AuthEvent {
  const factory _OnSignUpRequested(
      {required final String email,
      required final String password}) = _$OnSignUpRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSignUpRequestedImplCopyWith<_$OnSignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoginRequestedImplCopyWith<$Res> {
  factory _$$OnLoginRequestedImplCopyWith(_$OnLoginRequestedImpl value,
          $Res Function(_$OnLoginRequestedImpl) then) =
      __$$OnLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$OnLoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnLoginRequestedImpl>
    implements _$$OnLoginRequestedImplCopyWith<$Res> {
  __$$OnLoginRequestedImplCopyWithImpl(_$OnLoginRequestedImpl _value,
      $Res Function(_$OnLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$OnLoginRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnLoginRequestedImpl implements _OnLoginRequested {
  const _$OnLoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onLoginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginRequestedImplCopyWith<_$OnLoginRequestedImpl> get copyWith =>
      __$$OnLoginRequestedImplCopyWithImpl<_$OnLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onLoginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onLoginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onLoginRequested != null) {
      return onLoginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onLoginRequested != null) {
      return onLoginRequested(this);
    }
    return orElse();
  }
}

abstract class _OnLoginRequested implements AuthEvent {
  const factory _OnLoginRequested(
      {required final String email,
      required final String password}) = _$OnLoginRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnLoginRequestedImplCopyWith<_$OnLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRoleSelectedImplCopyWith<$Res> {
  factory _$$OnRoleSelectedImplCopyWith(_$OnRoleSelectedImpl value,
          $Res Function(_$OnRoleSelectedImpl) then) =
      __$$OnRoleSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String email, String role});
}

/// @nodoc
class __$$OnRoleSelectedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnRoleSelectedImpl>
    implements _$$OnRoleSelectedImplCopyWith<$Res> {
  __$$OnRoleSelectedImplCopyWithImpl(
      _$OnRoleSelectedImpl _value, $Res Function(_$OnRoleSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? role = null,
  }) {
    return _then(_$OnRoleSelectedImpl(
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
    ));
  }
}

/// @nodoc

class _$OnRoleSelectedImpl implements _OnRoleSelected {
  const _$OnRoleSelectedImpl(
      {required this.uid, required this.email, required this.role});

  @override
  final String uid;
  @override
  final String email;
  @override
  final String role;

  @override
  String toString() {
    return 'AuthEvent.onRoleSelected(uid: $uid, email: $email, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRoleSelectedImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, email, role);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRoleSelectedImplCopyWith<_$OnRoleSelectedImpl> get copyWith =>
      __$$OnRoleSelectedImplCopyWithImpl<_$OnRoleSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onRoleSelected(uid, email, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onRoleSelected?.call(uid, email, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onRoleSelected != null) {
      return onRoleSelected(uid, email, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onRoleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onRoleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onRoleSelected != null) {
      return onRoleSelected(this);
    }
    return orElse();
  }
}

abstract class _OnRoleSelected implements AuthEvent {
  const factory _OnRoleSelected(
      {required final String uid,
      required final String email,
      required final String role}) = _$OnRoleSelectedImpl;

  String get uid;
  String get email;
  String get role;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnRoleSelectedImplCopyWith<_$OnRoleSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnProfileCompletedImplCopyWith<$Res> {
  factory _$$OnProfileCompletedImplCopyWith(_$OnProfileCompletedImpl value,
          $Res Function(_$OnProfileCompletedImpl) then) =
      __$$OnProfileCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentialsDto user});

  $UserCredentialsDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$OnProfileCompletedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnProfileCompletedImpl>
    implements _$$OnProfileCompletedImplCopyWith<$Res> {
  __$$OnProfileCompletedImplCopyWithImpl(_$OnProfileCompletedImpl _value,
      $Res Function(_$OnProfileCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$OnProfileCompletedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredentialsDto,
    ));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$OnProfileCompletedImpl implements _OnProfileCompleted {
  const _$OnProfileCompletedImpl({required this.user});

  @override
  final UserCredentialsDto user;

  @override
  String toString() {
    return 'AuthEvent.onProfileCompleted(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnProfileCompletedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnProfileCompletedImplCopyWith<_$OnProfileCompletedImpl> get copyWith =>
      __$$OnProfileCompletedImplCopyWithImpl<_$OnProfileCompletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
  }) {
    return onProfileCompleted(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
  }) {
    return onProfileCompleted?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onProfileCompleted != null) {
      return onProfileCompleted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnAuthChanged value) onAuthChanged,
    required TResult Function(_OnSignOutRequested value) onSignOutRequested,
    required TResult Function(_OnSignUpRequested value) onSignUpRequested,
    required TResult Function(_OnLoginRequested value) onLoginRequested,
    required TResult Function(_OnRoleSelected value) onRoleSelected,
    required TResult Function(_OnProfileCompleted value) onProfileCompleted,
  }) {
    return onProfileCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnAuthChanged value)? onAuthChanged,
    TResult? Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(_OnLoginRequested value)? onLoginRequested,
    TResult? Function(_OnRoleSelected value)? onRoleSelected,
    TResult? Function(_OnProfileCompleted value)? onProfileCompleted,
  }) {
    return onProfileCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnAuthChanged value)? onAuthChanged,
    TResult Function(_OnSignOutRequested value)? onSignOutRequested,
    TResult Function(_OnSignUpRequested value)? onSignUpRequested,
    TResult Function(_OnLoginRequested value)? onLoginRequested,
    TResult Function(_OnRoleSelected value)? onRoleSelected,
    TResult Function(_OnProfileCompleted value)? onProfileCompleted,
    required TResult orElse(),
  }) {
    if (onProfileCompleted != null) {
      return onProfileCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnProfileCompleted implements AuthEvent {
  const factory _OnProfileCompleted({required final UserCredentialsDto user}) =
      _$OnProfileCompletedImpl;

  UserCredentialsDto get user;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnProfileCompletedImplCopyWith<_$OnProfileCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthState {
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentialsDto user});

  $UserCredentialsDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredentialsDto,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl({required this.user});

  @override
  final UserCredentialsDto user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated({required final UserCredentialsDto user}) =
      _$AuthenticatedImpl;

  UserCredentialsDto get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NeedsRoleSelectionImplCopyWith<$Res> {
  factory _$$NeedsRoleSelectionImplCopyWith(_$NeedsRoleSelectionImpl value,
          $Res Function(_$NeedsRoleSelectionImpl) then) =
      __$$NeedsRoleSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, String email});
}

/// @nodoc
class __$$NeedsRoleSelectionImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NeedsRoleSelectionImpl>
    implements _$$NeedsRoleSelectionImplCopyWith<$Res> {
  __$$NeedsRoleSelectionImplCopyWithImpl(_$NeedsRoleSelectionImpl _value,
      $Res Function(_$NeedsRoleSelectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
  }) {
    return _then(_$NeedsRoleSelectionImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NeedsRoleSelectionImpl implements _NeedsRoleSelection {
  const _$NeedsRoleSelectionImpl({required this.uid, required this.email});

  @override
  final String uid;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.needsRoleSelection(uid: $uid, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsRoleSelectionImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, email);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsRoleSelectionImplCopyWith<_$NeedsRoleSelectionImpl> get copyWith =>
      __$$NeedsRoleSelectionImplCopyWithImpl<_$NeedsRoleSelectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return needsRoleSelection(uid, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return needsRoleSelection?.call(uid, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (needsRoleSelection != null) {
      return needsRoleSelection(uid, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return needsRoleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return needsRoleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (needsRoleSelection != null) {
      return needsRoleSelection(this);
    }
    return orElse();
  }
}

abstract class _NeedsRoleSelection implements AuthState {
  const factory _NeedsRoleSelection(
      {required final String uid,
      required final String email}) = _$NeedsRoleSelectionImpl;

  String get uid;
  String get email;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeedsRoleSelectionImplCopyWith<_$NeedsRoleSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsOnboardingImplCopyWith<$Res> {
  factory _$$NeedsOnboardingImplCopyWith(_$NeedsOnboardingImpl value,
          $Res Function(_$NeedsOnboardingImpl) then) =
      __$$NeedsOnboardingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredentialsDto user});

  $UserCredentialsDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$NeedsOnboardingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NeedsOnboardingImpl>
    implements _$$NeedsOnboardingImplCopyWith<$Res> {
  __$$NeedsOnboardingImplCopyWithImpl(
      _$NeedsOnboardingImpl _value, $Res Function(_$NeedsOnboardingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NeedsOnboardingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredentialsDto,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$NeedsOnboardingImpl implements _NeedsOnboarding {
  const _$NeedsOnboardingImpl({required this.user});

  @override
  final UserCredentialsDto user;

  @override
  String toString() {
    return 'AuthState.needsOnboarding(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsOnboardingImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsOnboardingImplCopyWith<_$NeedsOnboardingImpl> get copyWith =>
      __$$NeedsOnboardingImplCopyWithImpl<_$NeedsOnboardingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return needsOnboarding(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return needsOnboarding?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (needsOnboarding != null) {
      return needsOnboarding(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsOnboarding value) needsOnboarding,
  }) {
    return needsOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsOnboarding value)? needsOnboarding,
  }) {
    return needsOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (needsOnboarding != null) {
      return needsOnboarding(this);
    }
    return orElse();
  }
}

abstract class _NeedsOnboarding implements AuthState {
  const factory _NeedsOnboarding({required final UserCredentialsDto user}) =
      _$NeedsOnboardingImpl;

  UserCredentialsDto get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeedsOnboardingImplCopyWith<_$NeedsOnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
