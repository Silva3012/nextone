// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArtistDto? artist) onArtistAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password, String? username)
        onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
    required TResult Function(_onSigUpRequested value) onSignUpRequested,
    required TResult Function(_onLoginRequested value) onLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
    TResult? Function(_onSigUpRequested value)? onSignUpRequested,
    TResult? Function(_onLoginRequested value)? onLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    TResult Function(_onSigUpRequested value)? onSignUpRequested,
    TResult Function(_onLoginRequested value)? onLoginRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAuthEventCopyWith<$Res> {
  factory $ArtistAuthEventCopyWith(
          ArtistAuthEvent value, $Res Function(ArtistAuthEvent) then) =
      _$ArtistAuthEventCopyWithImpl<$Res, ArtistAuthEvent>;
}

/// @nodoc
class _$ArtistAuthEventCopyWithImpl<$Res, $Val extends ArtistAuthEvent>
    implements $ArtistAuthEventCopyWith<$Res> {
  _$ArtistAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$onArtistAuthChangedImplCopyWith<$Res> {
  factory _$$onArtistAuthChangedImplCopyWith(_$onArtistAuthChangedImpl value,
          $Res Function(_$onArtistAuthChangedImpl) then) =
      __$$onArtistAuthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistDto? artist});

  $ArtistDtoCopyWith<$Res>? get artist;
}

/// @nodoc
class __$$onArtistAuthChangedImplCopyWithImpl<$Res>
    extends _$ArtistAuthEventCopyWithImpl<$Res, _$onArtistAuthChangedImpl>
    implements _$$onArtistAuthChangedImplCopyWith<$Res> {
  __$$onArtistAuthChangedImplCopyWithImpl(_$onArtistAuthChangedImpl _value,
      $Res Function(_$onArtistAuthChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_$onArtistAuthChangedImpl(
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto?,
    ));
  }

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistDtoCopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistDtoCopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$onArtistAuthChangedImpl implements _onArtistAuthChanged {
  const _$onArtistAuthChangedImpl({required this.artist});

  @override
  final ArtistDto? artist;

  @override
  String toString() {
    return 'ArtistAuthEvent.onArtistAuthChanged(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onArtistAuthChangedImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onArtistAuthChangedImplCopyWith<_$onArtistAuthChangedImpl> get copyWith =>
      __$$onArtistAuthChangedImplCopyWithImpl<_$onArtistAuthChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArtistDto? artist) onArtistAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password, String? username)
        onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
  }) {
    return onArtistAuthChanged(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
  }) {
    return onArtistAuthChanged?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onArtistAuthChanged != null) {
      return onArtistAuthChanged(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
    required TResult Function(_onSigUpRequested value) onSignUpRequested,
    required TResult Function(_onLoginRequested value) onLoginRequested,
  }) {
    return onArtistAuthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
    TResult? Function(_onSigUpRequested value)? onSignUpRequested,
    TResult? Function(_onLoginRequested value)? onLoginRequested,
  }) {
    return onArtistAuthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    TResult Function(_onSigUpRequested value)? onSignUpRequested,
    TResult Function(_onLoginRequested value)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onArtistAuthChanged != null) {
      return onArtistAuthChanged(this);
    }
    return orElse();
  }
}

abstract class _onArtistAuthChanged implements ArtistAuthEvent {
  const factory _onArtistAuthChanged({required final ArtistDto? artist}) =
      _$onArtistAuthChangedImpl;

  ArtistDto? get artist;

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onArtistAuthChangedImplCopyWith<_$onArtistAuthChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onSignOutRequestedImplCopyWith<$Res> {
  factory _$$onSignOutRequestedImplCopyWith(_$onSignOutRequestedImpl value,
          $Res Function(_$onSignOutRequestedImpl) then) =
      __$$onSignOutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onSignOutRequestedImplCopyWithImpl<$Res>
    extends _$ArtistAuthEventCopyWithImpl<$Res, _$onSignOutRequestedImpl>
    implements _$$onSignOutRequestedImplCopyWith<$Res> {
  __$$onSignOutRequestedImplCopyWithImpl(_$onSignOutRequestedImpl _value,
      $Res Function(_$onSignOutRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$onSignOutRequestedImpl implements _onSignOutRequested {
  const _$onSignOutRequestedImpl();

  @override
  String toString() {
    return 'ArtistAuthEvent.onSignOutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onSignOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArtistDto? artist) onArtistAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password, String? username)
        onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
  }) {
    return onSignOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
  }) {
    return onSignOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
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
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
    required TResult Function(_onSigUpRequested value) onSignUpRequested,
    required TResult Function(_onLoginRequested value) onLoginRequested,
  }) {
    return onSignOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
    TResult? Function(_onSigUpRequested value)? onSignUpRequested,
    TResult? Function(_onLoginRequested value)? onLoginRequested,
  }) {
    return onSignOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    TResult Function(_onSigUpRequested value)? onSignUpRequested,
    TResult Function(_onLoginRequested value)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onSignOutRequested != null) {
      return onSignOutRequested(this);
    }
    return orElse();
  }
}

abstract class _onSignOutRequested implements ArtistAuthEvent {
  const factory _onSignOutRequested() = _$onSignOutRequestedImpl;
}

/// @nodoc
abstract class _$$onSigUpRequestedImplCopyWith<$Res> {
  factory _$$onSigUpRequestedImplCopyWith(_$onSigUpRequestedImpl value,
          $Res Function(_$onSigUpRequestedImpl) then) =
      __$$onSigUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String? username});
}

/// @nodoc
class __$$onSigUpRequestedImplCopyWithImpl<$Res>
    extends _$ArtistAuthEventCopyWithImpl<$Res, _$onSigUpRequestedImpl>
    implements _$$onSigUpRequestedImplCopyWith<$Res> {
  __$$onSigUpRequestedImplCopyWithImpl(_$onSigUpRequestedImpl _value,
      $Res Function(_$onSigUpRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = freezed,
  }) {
    return _then(_$onSigUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$onSigUpRequestedImpl implements _onSigUpRequested {
  const _$onSigUpRequestedImpl(
      {required this.email, required this.password, this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String? username;

  @override
  String toString() {
    return 'ArtistAuthEvent.onSignUpRequested(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSigUpRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onSigUpRequestedImplCopyWith<_$onSigUpRequestedImpl> get copyWith =>
      __$$onSigUpRequestedImplCopyWithImpl<_$onSigUpRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArtistDto? artist) onArtistAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password, String? username)
        onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
  }) {
    return onSignUpRequested(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
  }) {
    return onSignUpRequested?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onSignUpRequested != null) {
      return onSignUpRequested(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
    required TResult Function(_onSigUpRequested value) onSignUpRequested,
    required TResult Function(_onLoginRequested value) onLoginRequested,
  }) {
    return onSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
    TResult? Function(_onSigUpRequested value)? onSignUpRequested,
    TResult? Function(_onLoginRequested value)? onLoginRequested,
  }) {
    return onSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    TResult Function(_onSigUpRequested value)? onSignUpRequested,
    TResult Function(_onLoginRequested value)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onSignUpRequested != null) {
      return onSignUpRequested(this);
    }
    return orElse();
  }
}

abstract class _onSigUpRequested implements ArtistAuthEvent {
  const factory _onSigUpRequested(
      {required final String email,
      required final String password,
      final String? username}) = _$onSigUpRequestedImpl;

  String get email;
  String get password;
  String? get username;

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onSigUpRequestedImplCopyWith<_$onSigUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onLoginRequestedImplCopyWith<$Res> {
  factory _$$onLoginRequestedImplCopyWith(_$onLoginRequestedImpl value,
          $Res Function(_$onLoginRequestedImpl) then) =
      __$$onLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$onLoginRequestedImplCopyWithImpl<$Res>
    extends _$ArtistAuthEventCopyWithImpl<$Res, _$onLoginRequestedImpl>
    implements _$$onLoginRequestedImplCopyWith<$Res> {
  __$$onLoginRequestedImplCopyWithImpl(_$onLoginRequestedImpl _value,
      $Res Function(_$onLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$onLoginRequestedImpl(
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

class _$onLoginRequestedImpl implements _onLoginRequested {
  const _$onLoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ArtistAuthEvent.onLoginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onLoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onLoginRequestedImplCopyWith<_$onLoginRequestedImpl> get copyWith =>
      __$$onLoginRequestedImplCopyWithImpl<_$onLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ArtistDto? artist) onArtistAuthChanged,
    required TResult Function() onSignOutRequested,
    required TResult Function(String email, String password, String? username)
        onSignUpRequested,
    required TResult Function(String email, String password) onLoginRequested,
  }) {
    return onLoginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
    TResult? Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult? Function(String email, String password)? onLoginRequested,
  }) {
    return onLoginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    TResult Function(String email, String password, String? username)?
        onSignUpRequested,
    TResult Function(String email, String password)? onLoginRequested,
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
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
    required TResult Function(_onSigUpRequested value) onSignUpRequested,
    required TResult Function(_onLoginRequested value) onLoginRequested,
  }) {
    return onLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
    TResult? Function(_onSigUpRequested value)? onSignUpRequested,
    TResult? Function(_onLoginRequested value)? onLoginRequested,
  }) {
    return onLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    TResult Function(_onSigUpRequested value)? onSignUpRequested,
    TResult Function(_onLoginRequested value)? onLoginRequested,
    required TResult orElse(),
  }) {
    if (onLoginRequested != null) {
      return onLoginRequested(this);
    }
    return orElse();
  }
}

abstract class _onLoginRequested implements ArtistAuthEvent {
  const factory _onLoginRequested(
      {required final String email,
      required final String password}) = _$onLoginRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of ArtistAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onLoginRequestedImplCopyWith<_$onLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAuthStateCopyWith<$Res> {
  factory $ArtistAuthStateCopyWith(
          ArtistAuthState value, $Res Function(ArtistAuthState) then) =
      _$ArtistAuthStateCopyWithImpl<$Res, ArtistAuthState>;
}

/// @nodoc
class _$ArtistAuthStateCopyWithImpl<$Res, $Val extends ArtistAuthState>
    implements $ArtistAuthStateCopyWith<$Res> {
  _$ArtistAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistAuthState
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
    extends _$ArtistAuthStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'ArtistAuthState.unknown()';
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
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
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
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements ArtistAuthState {
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistDto artist});

  $ArtistDtoCopyWith<$Res> get artist;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$ArtistAuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto,
    ));
  }

  /// Create a copy of ArtistAuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistDtoCopyWith<$Res> get artist {
    return $ArtistDtoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl(this.artist);

  @override
  final ArtistDto artist;

  @override
  String toString() {
    return 'ArtistAuthState.authenticated(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  /// Create a copy of ArtistAuthState
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
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return authenticated(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return authenticated?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(artist);
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
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements ArtistAuthState {
  const factory _Authenticated(final ArtistDto artist) = _$AuthenticatedImpl;

  ArtistDto get artist;

  /// Create a copy of ArtistAuthState
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
    extends _$ArtistAuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'ArtistAuthState.unauthenticated()';
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
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
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
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements ArtistAuthState {
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
    extends _$ArtistAuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ArtistAuthState.loading()';
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
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistAuthState {
  const factory _Loading() = _$LoadingImpl;
}
