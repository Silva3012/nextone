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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onArtistAuthChanged value) onArtistAuthChanged,
    required TResult Function(_onSignOutRequested value) onSignOutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
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
      freezed == artist
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
  const _$onArtistAuthChangedImpl(this.artist);

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
  }) {
    return onArtistAuthChanged(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
  }) {
    return onArtistAuthChanged?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
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
  }) {
    return onArtistAuthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
  }) {
    return onArtistAuthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
    required TResult orElse(),
  }) {
    if (onArtistAuthChanged != null) {
      return onArtistAuthChanged(this);
    }
    return orElse();
  }
}

abstract class _onArtistAuthChanged implements ArtistAuthEvent {
  const factory _onArtistAuthChanged(final ArtistDto? artist) =
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
  }) {
    return onSignOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult? Function()? onSignOutRequested,
  }) {
    return onSignOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ArtistDto? artist)? onArtistAuthChanged,
    TResult Function()? onSignOutRequested,
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
  }) {
    return onSignOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult? Function(_onSignOutRequested value)? onSignOutRequested,
  }) {
    return onSignOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onArtistAuthChanged value)? onArtistAuthChanged,
    TResult Function(_onSignOutRequested value)? onSignOutRequested,
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
mixin _$ArtistAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function(ArtistDto artist) authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
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
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
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
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
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
  }) {
    return authenticated(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
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
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
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
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function(ArtistDto artist)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function(ArtistDto artist)? authenticated,
    TResult Function()? unauthenticated,
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
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
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
