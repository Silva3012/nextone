// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackDto _$TrackDtoFromJson(Map<String, dynamic> json) {
  return _TrackDto.fromJson(json);
}

/// @nodoc
mixin _$TrackDto {
  String get trackId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String get coverArtUrl => throw _privateConstructorUsedError;
  int? get playCount => throw _privateConstructorUsedError;
  String? get genre => throw _privateConstructorUsedError;

  /// Serializes this TrackDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackDtoCopyWith<TrackDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackDtoCopyWith<$Res> {
  factory $TrackDtoCopyWith(TrackDto value, $Res Function(TrackDto) then) =
      _$TrackDtoCopyWithImpl<$Res, TrackDto>;
  @useResult
  $Res call(
      {String trackId,
      String artistId,
      String title,
      String audioUrl,
      String coverArtUrl,
      int? playCount,
      String? genre});
}

/// @nodoc
class _$TrackDtoCopyWithImpl<$Res, $Val extends TrackDto>
    implements $TrackDtoCopyWith<$Res> {
  _$TrackDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistId = null,
    Object? title = null,
    Object? audioUrl = null,
    Object? coverArtUrl = null,
    Object? playCount = freezed,
    Object? genre = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: null == coverArtUrl
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackDtoImplCopyWith<$Res>
    implements $TrackDtoCopyWith<$Res> {
  factory _$$TrackDtoImplCopyWith(
          _$TrackDtoImpl value, $Res Function(_$TrackDtoImpl) then) =
      __$$TrackDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String trackId,
      String artistId,
      String title,
      String audioUrl,
      String coverArtUrl,
      int? playCount,
      String? genre});
}

/// @nodoc
class __$$TrackDtoImplCopyWithImpl<$Res>
    extends _$TrackDtoCopyWithImpl<$Res, _$TrackDtoImpl>
    implements _$$TrackDtoImplCopyWith<$Res> {
  __$$TrackDtoImplCopyWithImpl(
      _$TrackDtoImpl _value, $Res Function(_$TrackDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistId = null,
    Object? title = null,
    Object? audioUrl = null,
    Object? coverArtUrl = null,
    Object? playCount = freezed,
    Object? genre = freezed,
  }) {
    return _then(_$TrackDtoImpl(
      trackId: null == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: null == coverArtUrl
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackDtoImpl implements _TrackDto {
  const _$TrackDtoImpl(
      {required this.trackId,
      required this.artistId,
      required this.title,
      required this.audioUrl,
      required this.coverArtUrl,
      this.playCount,
      this.genre});

  factory _$TrackDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackDtoImplFromJson(json);

  @override
  final String trackId;
  @override
  final String artistId;
  @override
  final String title;
  @override
  final String audioUrl;
  @override
  final String coverArtUrl;
  @override
  final int? playCount;
  @override
  final String? genre;

  @override
  String toString() {
    return 'TrackDto(trackId: $trackId, artistId: $artistId, title: $title, audioUrl: $audioUrl, coverArtUrl: $coverArtUrl, playCount: $playCount, genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackDtoImpl &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.coverArtUrl, coverArtUrl) ||
                other.coverArtUrl == coverArtUrl) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, trackId, artistId, title,
      audioUrl, coverArtUrl, playCount, genre);

  /// Create a copy of TrackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackDtoImplCopyWith<_$TrackDtoImpl> get copyWith =>
      __$$TrackDtoImplCopyWithImpl<_$TrackDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackDtoImplToJson(
      this,
    );
  }
}

abstract class _TrackDto implements TrackDto {
  const factory _TrackDto(
      {required final String trackId,
      required final String artistId,
      required final String title,
      required final String audioUrl,
      required final String coverArtUrl,
      final int? playCount,
      final String? genre}) = _$TrackDtoImpl;

  factory _TrackDto.fromJson(Map<String, dynamic> json) =
      _$TrackDtoImpl.fromJson;

  @override
  String get trackId;
  @override
  String get artistId;
  @override
  String get title;
  @override
  String get audioUrl;
  @override
  String get coverArtUrl;
  @override
  int? get playCount;
  @override
  String? get genre;

  /// Create a copy of TrackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackDtoImplCopyWith<_$TrackDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
