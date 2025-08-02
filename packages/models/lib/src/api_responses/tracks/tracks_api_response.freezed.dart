// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracks_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TracksApiResponse _$TracksApiResponseFromJson(Map<String, dynamic> json) {
  return _TracksApiResponse.fromJson(json);
}

/// @nodoc
mixin _$TracksApiResponse {
  @JsonKey(name: 'trackId')
  String get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistId')
  String get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  String get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioUrl')
  String get audioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'coverArtUrl')
  String get coverArtUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'playCount')
  int? get playCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'downloadCount')
  int? get downloadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this TracksApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TracksApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TracksApiResponseCopyWith<TracksApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksApiResponseCopyWith<$Res> {
  factory $TracksApiResponseCopyWith(
          TracksApiResponse value, $Res Function(TracksApiResponse) then) =
      _$TracksApiResponseCopyWithImpl<$Res, TracksApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'trackId') String trackId,
      @JsonKey(name: 'artistId') String artistId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'coverArtUrl') String coverArtUrl,
      @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'downloadCount') int? downloadCount,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt});
}

/// @nodoc
class _$TracksApiResponseCopyWithImpl<$Res, $Val extends TracksApiResponse>
    implements $TracksApiResponseCopyWith<$Res> {
  _$TracksApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TracksApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistId = null,
    Object? title = null,
    Object? genre = null,
    Object? price = null,
    Object? audioUrl = null,
    Object? coverArtUrl = null,
    Object? metadata = freezed,
    Object? playCount = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
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
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: null == coverArtUrl
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TracksApiResponseImplCopyWith<$Res>
    implements $TracksApiResponseCopyWith<$Res> {
  factory _$$TracksApiResponseImplCopyWith(_$TracksApiResponseImpl value,
          $Res Function(_$TracksApiResponseImpl) then) =
      __$$TracksApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'trackId') String trackId,
      @JsonKey(name: 'artistId') String artistId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'coverArtUrl') String coverArtUrl,
      @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
      @JsonKey(name: 'playCount') int? playCount,
      @JsonKey(name: 'downloadCount') int? downloadCount,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      DateTime? createdAt});
}

/// @nodoc
class __$$TracksApiResponseImplCopyWithImpl<$Res>
    extends _$TracksApiResponseCopyWithImpl<$Res, _$TracksApiResponseImpl>
    implements _$$TracksApiResponseImplCopyWith<$Res> {
  __$$TracksApiResponseImplCopyWithImpl(_$TracksApiResponseImpl _value,
      $Res Function(_$TracksApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TracksApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackId = null,
    Object? artistId = null,
    Object? title = null,
    Object? genre = null,
    Object? price = null,
    Object? audioUrl = null,
    Object? coverArtUrl = null,
    Object? metadata = freezed,
    Object? playCount = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TracksApiResponseImpl(
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
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverArtUrl: null == coverArtUrl
          ? _value.coverArtUrl
          : coverArtUrl // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      playCount: freezed == playCount
          ? _value.playCount
          : playCount // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadCount: freezed == downloadCount
          ? _value.downloadCount
          : downloadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TracksApiResponseImpl implements _TracksApiResponse {
  const _$TracksApiResponseImpl(
      {@JsonKey(name: 'trackId') required this.trackId,
      @JsonKey(name: 'artistId') required this.artistId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'genre') required this.genre,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'audioUrl') required this.audioUrl,
      @JsonKey(name: 'coverArtUrl') required this.coverArtUrl,
      @JsonKey(name: 'metadata') final Map<String, dynamic>? metadata,
      @JsonKey(name: 'playCount') this.playCount,
      @JsonKey(name: 'downloadCount') this.downloadCount,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      this.createdAt})
      : _metadata = metadata;

  factory _$TracksApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksApiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'trackId')
  final String trackId;
  @override
  @JsonKey(name: 'artistId')
  final String artistId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'genre')
  final String genre;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'audioUrl')
  final String audioUrl;
  @override
  @JsonKey(name: 'coverArtUrl')
  final String coverArtUrl;
  final Map<String, dynamic>? _metadata;
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'playCount')
  final int? playCount;
  @override
  @JsonKey(name: 'downloadCount')
  final int? downloadCount;
  @override
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TracksApiResponse(trackId: $trackId, artistId: $artistId, title: $title, genre: $genre, price: $price, audioUrl: $audioUrl, coverArtUrl: $coverArtUrl, metadata: $metadata, playCount: $playCount, downloadCount: $downloadCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksApiResponseImpl &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.coverArtUrl, coverArtUrl) ||
                other.coverArtUrl == coverArtUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.playCount, playCount) ||
                other.playCount == playCount) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      trackId,
      artistId,
      title,
      genre,
      price,
      audioUrl,
      coverArtUrl,
      const DeepCollectionEquality().hash(_metadata),
      playCount,
      downloadCount,
      createdAt);

  /// Create a copy of TracksApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TracksApiResponseImplCopyWith<_$TracksApiResponseImpl> get copyWith =>
      __$$TracksApiResponseImplCopyWithImpl<_$TracksApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracksApiResponseImplToJson(
      this,
    );
  }
}

abstract class _TracksApiResponse implements TracksApiResponse {
  const factory _TracksApiResponse(
      {@JsonKey(name: 'trackId') required final String trackId,
      @JsonKey(name: 'artistId') required final String artistId,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'genre') required final String genre,
      @JsonKey(name: 'price') required final double price,
      @JsonKey(name: 'audioUrl') required final String audioUrl,
      @JsonKey(name: 'coverArtUrl') required final String coverArtUrl,
      @JsonKey(name: 'metadata') final Map<String, dynamic>? metadata,
      @JsonKey(name: 'playCount') final int? playCount,
      @JsonKey(name: 'downloadCount') final int? downloadCount,
      @JsonKey(
          name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
      final DateTime? createdAt}) = _$TracksApiResponseImpl;

  factory _TracksApiResponse.fromJson(Map<String, dynamic> json) =
      _$TracksApiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'trackId')
  String get trackId;
  @override
  @JsonKey(name: 'artistId')
  String get artistId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'genre')
  String get genre;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'audioUrl')
  String get audioUrl;
  @override
  @JsonKey(name: 'coverArtUrl')
  String get coverArtUrl;
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(name: 'playCount')
  int? get playCount;
  @override
  @JsonKey(name: 'downloadCount')
  int? get downloadCount;
  @override
  @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
  DateTime? get createdAt;

  /// Create a copy of TracksApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TracksApiResponseImplCopyWith<_$TracksApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
