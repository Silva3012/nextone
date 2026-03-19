// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistApiResponse _$ArtistApiResponseFromJson(Map<String, dynamic> json) {
  return _ArtistApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ArtistApiResponse {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'artistId')
  String get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stageName')
  String get stageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'biography')
  String get biography => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  String get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'socialLinks')
  List<String>? get socialLinks => throw _privateConstructorUsedError;
  @JsonKey(name: 'profileImages')
  List<String>? get profileImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'supporterCount')
  int? get supporterCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Serializes this ArtistApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistApiResponseCopyWith<ArtistApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistApiResponseCopyWith<$Res> {
  factory $ArtistApiResponseCopyWith(
          ArtistApiResponse value, $Res Function(ArtistApiResponse) then) =
      _$ArtistApiResponseCopyWithImpl<$Res, ArtistApiResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'artistId') String artistId,
      @JsonKey(name: 'stageName') String stageName,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'biography') String biography,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'socialLinks') List<String>? socialLinks,
      @JsonKey(name: 'profileImages') List<String>? profileImages,
      @JsonKey(name: 'supporterCount') int? supporterCount,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl});
}

/// @nodoc
class _$ArtistApiResponseCopyWithImpl<$Res, $Val extends ArtistApiResponse>
    implements $ArtistApiResponseCopyWith<$Res> {
  _$ArtistApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? artistId = null,
    Object? stageName = null,
    Object? location = null,
    Object? biography = null,
    Object? genre = null,
    Object? createdAt = freezed,
    Object? socialLinks = freezed,
    Object? profileImages = freezed,
    Object? supporterCount = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      socialLinks: freezed == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileImages: freezed == profileImages
          ? _value.profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      supporterCount: freezed == supporterCount
          ? _value.supporterCount
          : supporterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistApiResponseImplCopyWith<$Res>
    implements $ArtistApiResponseCopyWith<$Res> {
  factory _$$ArtistApiResponseImplCopyWith(_$ArtistApiResponseImpl value,
          $Res Function(_$ArtistApiResponseImpl) then) =
      __$$ArtistApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'artistId') String artistId,
      @JsonKey(name: 'stageName') String stageName,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'biography') String biography,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'socialLinks') List<String>? socialLinks,
      @JsonKey(name: 'profileImages') List<String>? profileImages,
      @JsonKey(name: 'supporterCount') int? supporterCount,
      @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl});
}

/// @nodoc
class __$$ArtistApiResponseImplCopyWithImpl<$Res>
    extends _$ArtistApiResponseCopyWithImpl<$Res, _$ArtistApiResponseImpl>
    implements _$$ArtistApiResponseImplCopyWith<$Res> {
  __$$ArtistApiResponseImplCopyWithImpl(_$ArtistApiResponseImpl _value,
      $Res Function(_$ArtistApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? artistId = null,
    Object? stageName = null,
    Object? location = null,
    Object? biography = null,
    Object? genre = null,
    Object? createdAt = freezed,
    Object? socialLinks = freezed,
    Object? profileImages = freezed,
    Object? supporterCount = freezed,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$ArtistApiResponseImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      socialLinks: freezed == socialLinks
          ? _value._socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileImages: freezed == profileImages
          ? _value._profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      supporterCount: freezed == supporterCount
          ? _value.supporterCount
          : supporterCount // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistApiResponseImpl implements _ArtistApiResponse {
  const _$ArtistApiResponseImpl(
      {@JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'artistId') required this.artistId,
      @JsonKey(name: 'stageName') required this.stageName,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'biography') required this.biography,
      @JsonKey(name: 'genre') required this.genre,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'socialLinks') final List<String>? socialLinks,
      @JsonKey(name: 'profileImages') final List<String>? profileImages,
      @JsonKey(name: 'supporterCount') this.supporterCount,
      @JsonKey(name: 'profilePictureUrl') this.profilePictureUrl})
      : _socialLinks = socialLinks,
        _profileImages = profileImages;

  factory _$ArtistApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistApiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'artistId')
  final String artistId;
  @override
  @JsonKey(name: 'stageName')
  final String stageName;
  @override
  @JsonKey(name: 'location')
  final String location;
  @override
  @JsonKey(name: 'biography')
  final String biography;
  @override
  @JsonKey(name: 'genre')
  final String genre;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  final List<String>? _socialLinks;
  @override
  @JsonKey(name: 'socialLinks')
  List<String>? get socialLinks {
    final value = _socialLinks;
    if (value == null) return null;
    if (_socialLinks is EqualUnmodifiableListView) return _socialLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _profileImages;
  @override
  @JsonKey(name: 'profileImages')
  List<String>? get profileImages {
    final value = _profileImages;
    if (value == null) return null;
    if (_profileImages is EqualUnmodifiableListView) return _profileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'supporterCount')
  final int? supporterCount;
  @override
  @JsonKey(name: 'profilePictureUrl')
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'ArtistApiResponse(userId: $userId, artistId: $artistId, stageName: $stageName, location: $location, biography: $biography, genre: $genre, createdAt: $createdAt, socialLinks: $socialLinks, profileImages: $profileImages, supporterCount: $supporterCount, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistApiResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.stageName, stageName) ||
                other.stageName == stageName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._socialLinks, _socialLinks) &&
            const DeepCollectionEquality()
                .equals(other._profileImages, _profileImages) &&
            (identical(other.supporterCount, supporterCount) ||
                other.supporterCount == supporterCount) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      artistId,
      stageName,
      location,
      biography,
      genre,
      createdAt,
      const DeepCollectionEquality().hash(_socialLinks),
      const DeepCollectionEquality().hash(_profileImages),
      supporterCount,
      profilePictureUrl);

  /// Create a copy of ArtistApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistApiResponseImplCopyWith<_$ArtistApiResponseImpl> get copyWith =>
      __$$ArtistApiResponseImplCopyWithImpl<_$ArtistApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ArtistApiResponse implements ArtistApiResponse {
  const factory _ArtistApiResponse(
      {@JsonKey(name: 'userId') required final String userId,
      @JsonKey(name: 'artistId') required final String artistId,
      @JsonKey(name: 'stageName') required final String stageName,
      @JsonKey(name: 'location') required final String location,
      @JsonKey(name: 'biography') required final String biography,
      @JsonKey(name: 'genre') required final String genre,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'socialLinks') final List<String>? socialLinks,
      @JsonKey(name: 'profileImages') final List<String>? profileImages,
      @JsonKey(name: 'supporterCount') final int? supporterCount,
      @JsonKey(name: 'profilePictureUrl')
      final String? profilePictureUrl}) = _$ArtistApiResponseImpl;

  factory _ArtistApiResponse.fromJson(Map<String, dynamic> json) =
      _$ArtistApiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'artistId')
  String get artistId;
  @override
  @JsonKey(name: 'stageName')
  String get stageName;
  @override
  @JsonKey(name: 'location')
  String get location;
  @override
  @JsonKey(name: 'biography')
  String get biography;
  @override
  @JsonKey(name: 'genre')
  String get genre;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'socialLinks')
  List<String>? get socialLinks;
  @override
  @JsonKey(name: 'profileImages')
  List<String>? get profileImages;
  @override
  @JsonKey(name: 'supporterCount')
  int? get supporterCount;
  @override
  @JsonKey(name: 'profilePictureUrl')
  String? get profilePictureUrl;

  /// Create a copy of ArtistApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistApiResponseImplCopyWith<_$ArtistApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
