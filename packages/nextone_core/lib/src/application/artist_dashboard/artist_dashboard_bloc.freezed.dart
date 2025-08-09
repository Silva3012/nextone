// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistDashboardEvent {
  String get artistId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) onGetTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? onGetTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? onGetTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetTracks value) onGetTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetTracks value)? onGetTracks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetTracks value)? onGetTracks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ArtistDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistDashboardEventCopyWith<ArtistDashboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDashboardEventCopyWith<$Res> {
  factory $ArtistDashboardEventCopyWith(ArtistDashboardEvent value,
          $Res Function(ArtistDashboardEvent) then) =
      _$ArtistDashboardEventCopyWithImpl<$Res, ArtistDashboardEvent>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class _$ArtistDashboardEventCopyWithImpl<$Res,
        $Val extends ArtistDashboardEvent>
    implements $ArtistDashboardEventCopyWith<$Res> {
  _$ArtistDashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_value.copyWith(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnGetTracksImplCopyWith<$Res>
    implements $ArtistDashboardEventCopyWith<$Res> {
  factory _$$OnGetTracksImplCopyWith(
          _$OnGetTracksImpl value, $Res Function(_$OnGetTracksImpl) then) =
      __$$OnGetTracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$OnGetTracksImplCopyWithImpl<$Res>
    extends _$ArtistDashboardEventCopyWithImpl<$Res, _$OnGetTracksImpl>
    implements _$$OnGetTracksImplCopyWith<$Res> {
  __$$OnGetTracksImplCopyWithImpl(
      _$OnGetTracksImpl _value, $Res Function(_$OnGetTracksImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$OnGetTracksImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnGetTracksImpl implements OnGetTracks {
  const _$OnGetTracksImpl({required this.artistId});

  @override
  final String artistId;

  @override
  String toString() {
    return 'ArtistDashboardEvent.onGetTracks(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetTracksImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  /// Create a copy of ArtistDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetTracksImplCopyWith<_$OnGetTracksImpl> get copyWith =>
      __$$OnGetTracksImplCopyWithImpl<_$OnGetTracksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String artistId) onGetTracks,
  }) {
    return onGetTracks(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String artistId)? onGetTracks,
  }) {
    return onGetTracks?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String artistId)? onGetTracks,
    required TResult orElse(),
  }) {
    if (onGetTracks != null) {
      return onGetTracks(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnGetTracks value) onGetTracks,
  }) {
    return onGetTracks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnGetTracks value)? onGetTracks,
  }) {
    return onGetTracks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnGetTracks value)? onGetTracks,
    required TResult orElse(),
  }) {
    if (onGetTracks != null) {
      return onGetTracks(this);
    }
    return orElse();
  }
}

abstract class OnGetTracks implements ArtistDashboardEvent {
  const factory OnGetTracks({required final String artistId}) =
      _$OnGetTracksImpl;

  @override
  String get artistId;

  /// Create a copy of ArtistDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnGetTracksImplCopyWith<_$OnGetTracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistDashboardState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  ArtistDto get artist => throw _privateConstructorUsedError;
  List<TrackDto> get tracks => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistDashboardStateCopyWith<ArtistDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDashboardStateCopyWith<$Res> {
  factory $ArtistDashboardStateCopyWith(ArtistDashboardState value,
          $Res Function(ArtistDashboardState) then) =
      _$ArtistDashboardStateCopyWithImpl<$Res, ArtistDashboardState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      ArtistDto artist,
      List<TrackDto> tracks,
      String? errorMessage});

  $ArtistDtoCopyWith<$Res> get artist;
}

/// @nodoc
class _$ArtistDashboardStateCopyWithImpl<$Res,
        $Val extends ArtistDashboardState>
    implements $ArtistDashboardStateCopyWith<$Res> {
  _$ArtistDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? artist = null,
    Object? tracks = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackDto>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistDtoCopyWith<$Res> get artist {
    return $ArtistDtoCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistDashboardStateImplCopyWith<$Res>
    implements $ArtistDashboardStateCopyWith<$Res> {
  factory _$$ArtistDashboardStateImplCopyWith(_$ArtistDashboardStateImpl value,
          $Res Function(_$ArtistDashboardStateImpl) then) =
      __$$ArtistDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      ArtistDto artist,
      List<TrackDto> tracks,
      String? errorMessage});

  @override
  $ArtistDtoCopyWith<$Res> get artist;
}

/// @nodoc
class __$$ArtistDashboardStateImplCopyWithImpl<$Res>
    extends _$ArtistDashboardStateCopyWithImpl<$Res, _$ArtistDashboardStateImpl>
    implements _$$ArtistDashboardStateImplCopyWith<$Res> {
  __$$ArtistDashboardStateImplCopyWithImpl(_$ArtistDashboardStateImpl _value,
      $Res Function(_$ArtistDashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? artist = null,
    Object? tracks = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ArtistDashboardStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as ArtistDto,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<TrackDto>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ArtistDashboardStateImpl implements _ArtistDashboardState {
  const _$ArtistDashboardStateImpl(
      {required this.isLoading,
      required this.hasError,
      required this.artist,
      required final List<TrackDto> tracks,
      this.errorMessage})
      : _tracks = tracks;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final ArtistDto artist;
  final List<TrackDto> _tracks;
  @override
  List<TrackDto> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ArtistDashboardState(isLoading: $isLoading, hasError: $hasError, artist: $artist, tracks: $tracks, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDashboardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, artist,
      const DeepCollectionEquality().hash(_tracks), errorMessage);

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDashboardStateImplCopyWith<_$ArtistDashboardStateImpl>
      get copyWith =>
          __$$ArtistDashboardStateImplCopyWithImpl<_$ArtistDashboardStateImpl>(
              this, _$identity);
}

abstract class _ArtistDashboardState implements ArtistDashboardState {
  const factory _ArtistDashboardState(
      {required final bool isLoading,
      required final bool hasError,
      required final ArtistDto artist,
      required final List<TrackDto> tracks,
      final String? errorMessage}) = _$ArtistDashboardStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  ArtistDto get artist;
  @override
  List<TrackDto> get tracks;
  @override
  String? get errorMessage;

  /// Create a copy of ArtistDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistDashboardStateImplCopyWith<_$ArtistDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
