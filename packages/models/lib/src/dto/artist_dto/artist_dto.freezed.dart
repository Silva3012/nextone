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
  String get userId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get stageName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get biography => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<String> get socialLinks => throw _privateConstructorUsedError;
  List<String> get profileImages => throw _privateConstructorUsedError;
  int get supporterCount => throw _privateConstructorUsedError;
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
      {String userId,
      String artistId,
      String stageName,
      String location,
      String biography,
      String genre,
      DateTime? createdAt,
      List<String> socialLinks,
      List<String> profileImages,
      int supporterCount,
      String? profilePictureUrl});
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
      {String userId,
      String artistId,
      String stageName,
      String location,
      String biography,
      String genre,
      DateTime? createdAt,
      List<String> socialLinks,
      List<String> profileImages,
      int supporterCount,
      String? profilePictureUrl});
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
      {required this.userId,
      required this.artistId,
      required this.stageName,
      required this.location,
      required this.biography,
      required this.genre,
      this.createdAt,
      final List<String> socialLinks = const [],
      final List<String> profileImages = const [],
      this.supporterCount = 0,
      this.profilePictureUrl})
      : _socialLinks = socialLinks,
        _profileImages = profileImages;

  factory _$ArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistDtoImplFromJson(json);

  @override
  final String userId;
  @override
  final String artistId;
  @override
  final String stageName;
  @override
  final String location;
  @override
  final String biography;
  @override
  final String genre;
  @override
  final DateTime? createdAt;
  final List<String> _socialLinks;
  @override
  @JsonKey()
  List<String> get socialLinks {
    if (_socialLinks is EqualUnmodifiableListView) return _socialLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_socialLinks);
  }

  final List<String> _profileImages;
  @override
  @JsonKey()
  List<String> get profileImages {
    if (_profileImages is EqualUnmodifiableListView) return _profileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileImages);
  }

  @override
  @JsonKey()
  final int supporterCount;
  @override
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
      {required final String userId,
      required final String artistId,
      required final String stageName,
      required final String location,
      required final String biography,
      required final String genre,
      final DateTime? createdAt,
      final List<String> socialLinks,
      final List<String> profileImages,
      final int supporterCount,
      final String? profilePictureUrl}) = _$ArtistDtoImpl;

  factory _ArtistDto.fromJson(Map<String, dynamic> json) =
      _$ArtistDtoImpl.fromJson;

  @override
  String get userId;
  @override
  String get artistId;
  @override
  String get stageName;
  @override
  String get location;
  @override
  String get biography;
  @override
  String get genre;
  @override
  DateTime? get createdAt;
  @override
  List<String> get socialLinks;
  @override
  List<String> get profileImages;
  @override
  int get supporterCount;
  @override
  String? get profilePictureUrl;

  /// Create a copy of ArtistDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistDtoImplCopyWith<_$ArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
