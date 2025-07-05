// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistDto _$ArtistDtoFromJson(Map<String, dynamic> json) {
  return _ArtistDto.fromJson(json);
}

/// @nodoc
mixin _$ArtistDto {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'artist_id')
  String get artistId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stage_name')
  String get stageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'biography')
  String get biography => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre')
  String get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_links')
  List<String> get socialLinks => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_images')
  List<String> get profileImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'supporter_count')
  int get supporterCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture_url')
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  /// Serializes this ArtistDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistDtoCopyWith<ArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDtoCopyWith<$Res> {
  factory $ArtistDtoCopyWith(ArtistDto value, $Res Function(ArtistDto) then) =
      _$ArtistDtoCopyWithImpl<$Res, ArtistDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'artist_id') String artistId,
      @JsonKey(name: 'stage_name') String stageName,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'biography') String biography,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'social_links') List<String> socialLinks,
      @JsonKey(name: 'profile_images') List<String> profileImages,
      @JsonKey(name: 'supporter_count') int supporterCount,
      @JsonKey(name: 'profile_picture_url') String? profilePictureUrl});
}

/// @nodoc
class _$ArtistDtoCopyWithImpl<$Res, $Val extends ArtistDto>
    implements $ArtistDtoCopyWith<$Res> {
  _$ArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistDto
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
    Object? socialLinks = null,
    Object? profileImages = null,
    Object? supporterCount = null,
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
      socialLinks: null == socialLinks
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImages: null == profileImages
          ? _value.profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      supporterCount: null == supporterCount
          ? _value.supporterCount
          : supporterCount // ignore: cast_nullable_to_non_nullable
              as int,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistDtoImplCopyWith<$Res>
    implements $ArtistDtoCopyWith<$Res> {
  factory _$$ArtistDtoImplCopyWith(
          _$ArtistDtoImpl value, $Res Function(_$ArtistDtoImpl) then) =
      __$$ArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'artist_id') String artistId,
      @JsonKey(name: 'stage_name') String stageName,
      @JsonKey(name: 'location') String location,
      @JsonKey(name: 'biography') String biography,
      @JsonKey(name: 'genre') String genre,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'social_links') List<String> socialLinks,
      @JsonKey(name: 'profile_images') List<String> profileImages,
      @JsonKey(name: 'supporter_count') int supporterCount,
      @JsonKey(name: 'profile_picture_url') String? profilePictureUrl});
}

/// @nodoc
class __$$ArtistDtoImplCopyWithImpl<$Res>
    extends _$ArtistDtoCopyWithImpl<$Res, _$ArtistDtoImpl>
    implements _$$ArtistDtoImplCopyWith<$Res> {
  __$$ArtistDtoImplCopyWithImpl(
      _$ArtistDtoImpl _value, $Res Function(_$ArtistDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArtistDto
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
    Object? socialLinks = null,
    Object? profileImages = null,
    Object? supporterCount = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$ArtistDtoImpl(
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
      socialLinks: null == socialLinks
          ? _value._socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileImages: null == profileImages
          ? _value._profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      supporterCount: null == supporterCount
          ? _value.supporterCount
          : supporterCount // ignore: cast_nullable_to_non_nullable
              as int,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistDtoImpl implements _ArtistDto {
  const _$ArtistDtoImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'artist_id') required this.artistId,
      @JsonKey(name: 'stage_name') required this.stageName,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'biography') required this.biography,
      @JsonKey(name: 'genre') required this.genre,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'social_links') final List<String> socialLinks = const [],
      @JsonKey(name: 'profile_images')
      final List<String> profileImages = const [],
      @JsonKey(name: 'supporter_count') this.supporterCount = 0,
      @JsonKey(name: 'profile_picture_url') this.profilePictureUrl})
      : _socialLinks = socialLinks,
        _profileImages = profileImages;

  factory _$ArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistDtoImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'artist_id')
  final String artistId;
  @override
  @JsonKey(name: 'stage_name')
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
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final List<String> _socialLinks;
  @override
  @JsonKey(name: 'social_links')
  List<String> get socialLinks {
    if (_socialLinks is EqualUnmodifiableListView) return _socialLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialLinks);
  }

  final List<String> _profileImages;
  @override
  @JsonKey(name: 'profile_images')
  List<String> get profileImages {
    if (_profileImages is EqualUnmodifiableListView) return _profileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileImages);
  }

  @override
  @JsonKey(name: 'supporter_count')
  final int supporterCount;
  @override
  @JsonKey(name: 'profile_picture_url')
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'ArtistDto(userId: $userId, artistId: $artistId, stageName: $stageName, location: $location, biography: $biography, genre: $genre, createdAt: $createdAt, socialLinks: $socialLinks, profileImages: $profileImages, supporterCount: $supporterCount, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistDtoImpl &&
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

  /// Create a copy of ArtistDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      __$$ArtistDtoImplCopyWithImpl<_$ArtistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _ArtistDto implements ArtistDto {
  const factory _ArtistDto(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'artist_id') required final String artistId,
      @JsonKey(name: 'stage_name') required final String stageName,
      @JsonKey(name: 'location') required final String location,
      @JsonKey(name: 'biography') required final String biography,
      @JsonKey(name: 'genre') required final String genre,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'social_links') final List<String> socialLinks,
      @JsonKey(name: 'profile_images') final List<String> profileImages,
      @JsonKey(name: 'supporter_count') final int supporterCount,
      @JsonKey(name: 'profile_picture_url')
      final String? profilePictureUrl}) = _$ArtistDtoImpl;

  factory _ArtistDto.fromJson(Map<String, dynamic> json) =
      _$ArtistDtoImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'artist_id')
  String get artistId;
  @override
  @JsonKey(name: 'stage_name')
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
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'social_links')
  List<String> get socialLinks;
  @override
  @JsonKey(name: 'profile_images')
  List<String> get profileImages;
  @override
  @JsonKey(name: 'supporter_count')
  int get supporterCount;
  @override
  @JsonKey(name: 'profile_picture_url')
  String? get profilePictureUrl;

  /// Create a copy of ArtistDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
