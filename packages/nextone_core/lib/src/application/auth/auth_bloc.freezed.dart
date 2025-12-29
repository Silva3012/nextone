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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
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

class _$OnAuthChangedImpl implements OnAuthChanged {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onAuthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onAuthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onAuthChanged != null) {
      return onAuthChanged(this);
    }
    return orElse();
  }
}

abstract class OnAuthChanged implements AuthEvent {
  const factory OnAuthChanged({required final UserCredentialsDto? user}) =
      _$OnAuthChangedImpl;

  UserCredentialsDto? get user;
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$OnSignOutRequestedImpl implements OnSignOutRequested {
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onSignOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onSignOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onSignOutRequested != null) {
      return onSignOutRequested(this);
    }
    return orElse();
  }
}

abstract class OnSignOutRequested implements AuthEvent {
  const factory OnSignOutRequested() = _$OnSignOutRequestedImpl;
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

class _$OnSignUpRequestedImpl implements OnSignUpRequested {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onSignUpRequested != null) {
      return onSignUpRequested(this);
    }
    return orElse();
  }
}

abstract class OnSignUpRequested implements AuthEvent {
  const factory OnSignUpRequested(
      {required final String email,
      required final String password}) = _$OnSignUpRequestedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
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

class _$OnLoginRequestedImpl implements OnLoginRequested {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onLoginRequested != null) {
      return onLoginRequested(this);
    }
    return orElse();
  }
}

abstract class OnLoginRequested implements AuthEvent {
  const factory OnLoginRequested(
      {required final String email,
      required final String password}) = _$OnLoginRequestedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$OnLoginRequestedImplCopyWith<_$OnLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnForgotPasswordRequestedImplCopyWith<$Res> {
  factory _$$OnForgotPasswordRequestedImplCopyWith(
          _$OnForgotPasswordRequestedImpl value,
          $Res Function(_$OnForgotPasswordRequestedImpl) then) =
      __$$OnForgotPasswordRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OnForgotPasswordRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnForgotPasswordRequestedImpl>
    implements _$$OnForgotPasswordRequestedImplCopyWith<$Res> {
  __$$OnForgotPasswordRequestedImplCopyWithImpl(
      _$OnForgotPasswordRequestedImpl _value,
      $Res Function(_$OnForgotPasswordRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OnForgotPasswordRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnForgotPasswordRequestedImpl implements OnForgotPasswordRequested {
  const _$OnForgotPasswordRequestedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.onForgotPasswordRequested(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnForgotPasswordRequestedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnForgotPasswordRequestedImplCopyWith<_$OnForgotPasswordRequestedImpl>
      get copyWith => __$$OnForgotPasswordRequestedImplCopyWithImpl<
          _$OnForgotPasswordRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
  }) {
    return onForgotPasswordRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
  }) {
    return onForgotPasswordRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
    required TResult orElse(),
  }) {
    if (onForgotPasswordRequested != null) {
      return onForgotPasswordRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onForgotPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onForgotPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onForgotPasswordRequested != null) {
      return onForgotPasswordRequested(this);
    }
    return orElse();
  }
}

abstract class OnForgotPasswordRequested implements AuthEvent {
  const factory OnForgotPasswordRequested({required final String email}) =
      _$OnForgotPasswordRequestedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$OnForgotPasswordRequestedImplCopyWith<_$OnForgotPasswordRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
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

class _$OnRoleSelectedImpl implements OnRoleSelected {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onRoleSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onRoleSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onRoleSelected != null) {
      return onRoleSelected(this);
    }
    return orElse();
  }
}

abstract class OnRoleSelected implements AuthEvent {
  const factory OnRoleSelected(
      {required final String uid,
      required final String email,
      required final String role}) = _$OnRoleSelectedImpl;

  String get uid;
  String get email;
  String get role;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$OnProfileCompletedImpl implements OnProfileCompleted {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
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
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
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
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
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
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return onProfileCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return onProfileCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (onProfileCompleted != null) {
      return onProfileCompleted(this);
    }
    return orElse();
  }
}

abstract class OnProfileCompleted implements AuthEvent {
  const factory OnProfileCompleted({required final UserCredentialsDto user}) =
      _$OnProfileCompletedImpl;

  UserCredentialsDto get user;
  @JsonKey(ignore: true)
  _$$OnProfileCompletedImplCopyWith<_$OnProfileCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteOnboardingImplCopyWith<$Res> {
  factory _$$CompleteOnboardingImplCopyWith(_$CompleteOnboardingImpl value,
          $Res Function(_$CompleteOnboardingImpl) then) =
      __$$CompleteOnboardingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserCredentialsDto user,
      String stageName,
      String location,
      String biography,
      String genre,
      File profileImage});

  $UserCredentialsDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$CompleteOnboardingImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CompleteOnboardingImpl>
    implements _$$CompleteOnboardingImplCopyWith<$Res> {
  __$$CompleteOnboardingImplCopyWithImpl(_$CompleteOnboardingImpl _value,
      $Res Function(_$CompleteOnboardingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? stageName = null,
    Object? location = null,
    Object? biography = null,
    Object? genre = null,
    Object? profileImage = null,
  }) {
    return _then(_$CompleteOnboardingImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserCredentialsDto,
      stageName: null == stageName
          ? _value.stageName
          : stageName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      biography: null == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CompleteOnboardingImpl implements CompleteOnboarding {
  const _$CompleteOnboardingImpl(
      {required this.user,
      required this.stageName,
      required this.location,
      required this.biography,
      required this.genre,
      required this.profileImage});

  @override
  final UserCredentialsDto user;
  @override
  final String stageName;
  @override
  final String location;
  @override
  final String biography;
  @override
  final String genre;
  @override
  final File profileImage;

  @override
  String toString() {
    return 'AuthEvent.completeOnboarding(user: $user, stageName: $stageName, location: $location, biography: $biography, genre: $genre, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteOnboardingImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, stageName, location, biography, genre, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteOnboardingImplCopyWith<_$CompleteOnboardingImpl> get copyWith =>
      __$$CompleteOnboardingImplCopyWithImpl<_$CompleteOnboardingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserCredentialsDto? user) onAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password) onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
    required TResult Function(String email) onForgotPasswordRequested,
    required TResult Function(String uid, String email, String role)
        onRoleSelected,
    required TResult Function(UserCredentialsDto user) onProfileCompleted,
    required TResult Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)
        completeOnboarding,
  }) {
    return completeOnboarding(
        user, stageName, location, biography, genre, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserCredentialsDto? user)? onAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password)? onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
    TResult? Function(String email)? onForgotPasswordRequested,
    TResult? Function(String uid, String email, String role)? onRoleSelected,
    TResult? Function(UserCredentialsDto user)? onProfileCompleted,
    TResult? Function(UserCredentialsDto user, String stageName,
            String location, String biography, String genre, File profileImage)?
        completeOnboarding,
  }) {
    return completeOnboarding?.call(
        user, stageName, location, biography, genre, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserCredentialsDto? user)? onAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password)? onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    TResult Function(String email)? onForgotPasswordRequested,
    TResult Function(String uid, String email, String role)? onRoleSelected,
    TResult Function(UserCredentialsDto user)? onProfileCompleted,
    TResult Function(UserCredentialsDto user, String stageName, String location,
            String biography, String genre, File profileImage)?
        completeOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding(
          user, stageName, location, biography, genre, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAuthChanged value) onAuthChanged,
    required TResult Function(OnSignOutRequested value) onSignOutRequested,
    required TResult Function(OnSignUpRequested value) onSignUpRequested,
    required TResult Function(OnLoginRequested value) onLoginRequested,
    required TResult Function(OnForgotPasswordRequested value)
        onForgotPasswordRequested,
    required TResult Function(OnRoleSelected value) onRoleSelected,
    required TResult Function(OnProfileCompleted value) onProfileCompleted,
    required TResult Function(CompleteOnboarding value) completeOnboarding,
  }) {
    return completeOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAuthChanged value)? onAuthChanged,
    TResult? Function(OnSignOutRequested value)? onSignOutRequested,
    TResult? Function(OnSignUpRequested value)? onSignUpRequested,
    TResult? Function(OnLoginRequested value)? onLoginRequested,
    TResult? Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult? Function(OnRoleSelected value)? onRoleSelected,
    TResult? Function(OnProfileCompleted value)? onProfileCompleted,
    TResult? Function(CompleteOnboarding value)? completeOnboarding,
  }) {
    return completeOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAuthChanged value)? onAuthChanged,
    TResult Function(OnSignOutRequested value)? onSignOutRequested,
    TResult Function(OnSignUpRequested value)? onSignUpRequested,
    TResult Function(OnLoginRequested value)? onLoginRequested,
    TResult Function(OnForgotPasswordRequested value)?
        onForgotPasswordRequested,
    TResult Function(OnRoleSelected value)? onRoleSelected,
    TResult Function(OnProfileCompleted value)? onProfileCompleted,
    TResult Function(CompleteOnboarding value)? completeOnboarding,
    required TResult orElse(),
  }) {
    if (completeOnboarding != null) {
      return completeOnboarding(this);
    }
    return orElse();
  }
}

abstract class CompleteOnboarding implements AuthEvent {
  const factory CompleteOnboarding(
      {required final UserCredentialsDto user,
      required final String stageName,
      required final String location,
      required final String biography,
      required final String genre,
      required final File profileImage}) = _$CompleteOnboardingImpl;

  UserCredentialsDto get user;
  String get stageName;
  String get location;
  String get biography;
  String get genre;
  File get profileImage;
  @JsonKey(ignore: true)
  _$$CompleteOnboardingImplCopyWith<_$CompleteOnboardingImpl> get copyWith =>
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
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
}

/// @nodoc

class _$UnknownImpl implements Unknown {
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements AuthState {
  const factory Unknown() = _$UnknownImpl;
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

  @JsonKey(ignore: true)
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
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
  @JsonKey(ignore: true)
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
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
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
}

/// @nodoc

class _$LoadingImpl implements Loading {
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String? details});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message, this.details});

  @override
  final String message;
  @override
  final String? details;

  @override
  String toString() {
    return 'AuthState.error(message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return error(message, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return error?.call(message, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final String message, final String? details}) =
      _$ErrorImpl;

  String get message;
  String? get details;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordEmailSentImplCopyWith<$Res> {
  factory _$$ForgotPasswordEmailSentImplCopyWith(
          _$ForgotPasswordEmailSentImpl value,
          $Res Function(_$ForgotPasswordEmailSentImpl) then) =
      __$$ForgotPasswordEmailSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForgotPasswordEmailSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ForgotPasswordEmailSentImpl>
    implements _$$ForgotPasswordEmailSentImplCopyWith<$Res> {
  __$$ForgotPasswordEmailSentImplCopyWithImpl(
      _$ForgotPasswordEmailSentImpl _value,
      $Res Function(_$ForgotPasswordEmailSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForgotPasswordEmailSentImpl implements ForgotPasswordEmailSent {
  const _$ForgotPasswordEmailSentImpl();

  @override
  String toString() {
    return 'AuthState.forgotPasswordEmailSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEmailSentImpl);
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return forgotPasswordEmailSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return forgotPasswordEmailSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (forgotPasswordEmailSent != null) {
      return forgotPasswordEmailSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return forgotPasswordEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return forgotPasswordEmailSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (forgotPasswordEmailSent != null) {
      return forgotPasswordEmailSent(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordEmailSent implements AuthState {
  const factory ForgotPasswordEmailSent() = _$ForgotPasswordEmailSentImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordErrorImplCopyWith<$Res> {
  factory _$$ForgotPasswordErrorImplCopyWith(_$ForgotPasswordErrorImpl value,
          $Res Function(_$ForgotPasswordErrorImpl) then) =
      __$$ForgotPasswordErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgotPasswordErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ForgotPasswordErrorImpl>
    implements _$$ForgotPasswordErrorImplCopyWith<$Res> {
  __$$ForgotPasswordErrorImplCopyWithImpl(_$ForgotPasswordErrorImpl _value,
      $Res Function(_$ForgotPasswordErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ForgotPasswordErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordErrorImpl implements ForgotPasswordError {
  const _$ForgotPasswordErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.forgotPasswordError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      __$$ForgotPasswordErrorImplCopyWithImpl<_$ForgotPasswordErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(UserCredentialsDto user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
    required TResult Function(String uid, String email) needsRoleSelection,
    required TResult Function(UserCredentialsDto user) needsOnboarding,
  }) {
    return forgotPasswordError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(UserCredentialsDto user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
    TResult? Function(String uid, String email)? needsRoleSelection,
    TResult? Function(UserCredentialsDto user)? needsOnboarding,
  }) {
    return forgotPasswordError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(UserCredentialsDto user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
    TResult Function(String uid, String email)? needsRoleSelection,
    TResult Function(UserCredentialsDto user)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (forgotPasswordError != null) {
      return forgotPasswordError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return forgotPasswordError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return forgotPasswordError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (forgotPasswordError != null) {
      return forgotPasswordError(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordError implements AuthState {
  const factory ForgotPasswordError({required final String message}) =
      _$ForgotPasswordErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ForgotPasswordErrorImplCopyWith<_$ForgotPasswordErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

  @JsonKey(ignore: true)
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return needsRoleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return needsRoleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
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
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsDtoCopyWith<$Res> get user {
    return $UserCredentialsDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$NeedsOnboardingImpl implements NeedsOnboarding {
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

  @JsonKey(ignore: true)
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
    required TResult Function(String message, String? details) error,
    required TResult Function() forgotPasswordEmailSent,
    required TResult Function(String message) forgotPasswordError,
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
    TResult? Function(String message, String? details)? error,
    TResult? Function()? forgotPasswordEmailSent,
    TResult? Function(String message)? forgotPasswordError,
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
    TResult Function(String message, String? details)? error,
    TResult Function()? forgotPasswordEmailSent,
    TResult Function(String message)? forgotPasswordError,
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
    required TResult Function(Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ForgotPasswordEmailSent value)
        forgotPasswordEmailSent,
    required TResult Function(ForgotPasswordError value) forgotPasswordError,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(NeedsOnboarding value) needsOnboarding,
  }) {
    return needsOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult? Function(ForgotPasswordError value)? forgotPasswordError,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(NeedsOnboarding value)? needsOnboarding,
  }) {
    return needsOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ForgotPasswordEmailSent value)? forgotPasswordEmailSent,
    TResult Function(ForgotPasswordError value)? forgotPasswordError,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(NeedsOnboarding value)? needsOnboarding,
    required TResult orElse(),
  }) {
    if (needsOnboarding != null) {
      return needsOnboarding(this);
    }
    return orElse();
  }
}

abstract class NeedsOnboarding implements AuthState {
  const factory NeedsOnboarding({required final UserCredentialsDto user}) =
      _$NeedsOnboardingImpl;

  UserCredentialsDto get user;
  @JsonKey(ignore: true)
  _$$NeedsOnboardingImplCopyWith<_$NeedsOnboardingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
