// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingAiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String location, String genre)
        generateBio,
    required TResult Function() clearError,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String location, String genre)? generateBio,
    TResult? Function()? clearError,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String location, String genre)? generateBio,
    TResult Function()? clearError,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateBio value) generateBio,
    required TResult Function(ClearOnboardingAiError value) clearError,
    required TResult Function(ResetOnboardingAi value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateBio value)? generateBio,
    TResult? Function(ClearOnboardingAiError value)? clearError,
    TResult? Function(ResetOnboardingAi value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateBio value)? generateBio,
    TResult Function(ClearOnboardingAiError value)? clearError,
    TResult Function(ResetOnboardingAi value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingAiEventCopyWith<$Res> {
  factory $OnboardingAiEventCopyWith(
          OnboardingAiEvent value, $Res Function(OnboardingAiEvent) then) =
      _$OnboardingAiEventCopyWithImpl<$Res, OnboardingAiEvent>;
}

/// @nodoc
class _$OnboardingAiEventCopyWithImpl<$Res, $Val extends OnboardingAiEvent>
    implements $OnboardingAiEventCopyWith<$Res> {
  _$OnboardingAiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateBioImplCopyWith<$Res> {
  factory _$$GenerateBioImplCopyWith(
          _$GenerateBioImpl value, $Res Function(_$GenerateBioImpl) then) =
      __$$GenerateBioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String location, String genre});
}

/// @nodoc
class __$$GenerateBioImplCopyWithImpl<$Res>
    extends _$OnboardingAiEventCopyWithImpl<$Res, _$GenerateBioImpl>
    implements _$$GenerateBioImplCopyWith<$Res> {
  __$$GenerateBioImplCopyWithImpl(
      _$GenerateBioImpl _value, $Res Function(_$GenerateBioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? location = null,
    Object? genre = null,
  }) {
    return _then(_$GenerateBioImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateBioImpl implements GenerateBio {
  const _$GenerateBioImpl(
      {required this.name, required this.location, required this.genre});

  @override
  final String name;
  @override
  final String location;
  @override
  final String genre;

  @override
  String toString() {
    return 'OnboardingAiEvent.generateBio(name: $name, location: $location, genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateBioImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, location, genre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateBioImplCopyWith<_$GenerateBioImpl> get copyWith =>
      __$$GenerateBioImplCopyWithImpl<_$GenerateBioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String location, String genre)
        generateBio,
    required TResult Function() clearError,
    required TResult Function() reset,
  }) {
    return generateBio(name, location, genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String location, String genre)? generateBio,
    TResult? Function()? clearError,
    TResult? Function()? reset,
  }) {
    return generateBio?.call(name, location, genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String location, String genre)? generateBio,
    TResult Function()? clearError,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (generateBio != null) {
      return generateBio(name, location, genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateBio value) generateBio,
    required TResult Function(ClearOnboardingAiError value) clearError,
    required TResult Function(ResetOnboardingAi value) reset,
  }) {
    return generateBio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateBio value)? generateBio,
    TResult? Function(ClearOnboardingAiError value)? clearError,
    TResult? Function(ResetOnboardingAi value)? reset,
  }) {
    return generateBio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateBio value)? generateBio,
    TResult Function(ClearOnboardingAiError value)? clearError,
    TResult Function(ResetOnboardingAi value)? reset,
    required TResult orElse(),
  }) {
    if (generateBio != null) {
      return generateBio(this);
    }
    return orElse();
  }
}

abstract class GenerateBio implements OnboardingAiEvent {
  const factory GenerateBio(
      {required final String name,
      required final String location,
      required final String genre}) = _$GenerateBioImpl;

  String get name;
  String get location;
  String get genre;
  @JsonKey(ignore: true)
  _$$GenerateBioImplCopyWith<_$GenerateBioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOnboardingAiErrorImplCopyWith<$Res> {
  factory _$$ClearOnboardingAiErrorImplCopyWith(
          _$ClearOnboardingAiErrorImpl value,
          $Res Function(_$ClearOnboardingAiErrorImpl) then) =
      __$$ClearOnboardingAiErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOnboardingAiErrorImplCopyWithImpl<$Res>
    extends _$OnboardingAiEventCopyWithImpl<$Res, _$ClearOnboardingAiErrorImpl>
    implements _$$ClearOnboardingAiErrorImplCopyWith<$Res> {
  __$$ClearOnboardingAiErrorImplCopyWithImpl(
      _$ClearOnboardingAiErrorImpl _value,
      $Res Function(_$ClearOnboardingAiErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearOnboardingAiErrorImpl implements ClearOnboardingAiError {
  const _$ClearOnboardingAiErrorImpl();

  @override
  String toString() {
    return 'OnboardingAiEvent.clearError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOnboardingAiErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String location, String genre)
        generateBio,
    required TResult Function() clearError,
    required TResult Function() reset,
  }) {
    return clearError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String location, String genre)? generateBio,
    TResult? Function()? clearError,
    TResult? Function()? reset,
  }) {
    return clearError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String location, String genre)? generateBio,
    TResult Function()? clearError,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateBio value) generateBio,
    required TResult Function(ClearOnboardingAiError value) clearError,
    required TResult Function(ResetOnboardingAi value) reset,
  }) {
    return clearError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateBio value)? generateBio,
    TResult? Function(ClearOnboardingAiError value)? clearError,
    TResult? Function(ResetOnboardingAi value)? reset,
  }) {
    return clearError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateBio value)? generateBio,
    TResult Function(ClearOnboardingAiError value)? clearError,
    TResult Function(ResetOnboardingAi value)? reset,
    required TResult orElse(),
  }) {
    if (clearError != null) {
      return clearError(this);
    }
    return orElse();
  }
}

abstract class ClearOnboardingAiError implements OnboardingAiEvent {
  const factory ClearOnboardingAiError() = _$ClearOnboardingAiErrorImpl;
}

/// @nodoc
abstract class _$$ResetOnboardingAiImplCopyWith<$Res> {
  factory _$$ResetOnboardingAiImplCopyWith(_$ResetOnboardingAiImpl value,
          $Res Function(_$ResetOnboardingAiImpl) then) =
      __$$ResetOnboardingAiImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetOnboardingAiImplCopyWithImpl<$Res>
    extends _$OnboardingAiEventCopyWithImpl<$Res, _$ResetOnboardingAiImpl>
    implements _$$ResetOnboardingAiImplCopyWith<$Res> {
  __$$ResetOnboardingAiImplCopyWithImpl(_$ResetOnboardingAiImpl _value,
      $Res Function(_$ResetOnboardingAiImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetOnboardingAiImpl implements ResetOnboardingAi {
  const _$ResetOnboardingAiImpl();

  @override
  String toString() {
    return 'OnboardingAiEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetOnboardingAiImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String location, String genre)
        generateBio,
    required TResult Function() clearError,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String location, String genre)? generateBio,
    TResult? Function()? clearError,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String location, String genre)? generateBio,
    TResult Function()? clearError,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateBio value) generateBio,
    required TResult Function(ClearOnboardingAiError value) clearError,
    required TResult Function(ResetOnboardingAi value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateBio value)? generateBio,
    TResult? Function(ClearOnboardingAiError value)? clearError,
    TResult? Function(ResetOnboardingAi value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateBio value)? generateBio,
    TResult Function(ClearOnboardingAiError value)? clearError,
    TResult Function(ResetOnboardingAi value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetOnboardingAi implements OnboardingAiEvent {
  const factory ResetOnboardingAi() = _$ResetOnboardingAiImpl;
}

/// @nodoc
mixin _$OnboardingAiState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get generatedBio => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingAiStateCopyWith<OnboardingAiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingAiStateCopyWith<$Res> {
  factory $OnboardingAiStateCopyWith(
          OnboardingAiState value, $Res Function(OnboardingAiState) then) =
      _$OnboardingAiStateCopyWithImpl<$Res, OnboardingAiState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? generatedBio,
      String? errorMessage});
}

/// @nodoc
class _$OnboardingAiStateCopyWithImpl<$Res, $Val extends OnboardingAiState>
    implements $OnboardingAiStateCopyWith<$Res> {
  _$OnboardingAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? generatedBio = freezed,
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
      generatedBio: freezed == generatedBio
          ? _value.generatedBio
          : generatedBio // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingAiStateImplCopyWith<$Res>
    implements $OnboardingAiStateCopyWith<$Res> {
  factory _$$OnboardingAiStateImplCopyWith(_$OnboardingAiStateImpl value,
          $Res Function(_$OnboardingAiStateImpl) then) =
      __$$OnboardingAiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? generatedBio,
      String? errorMessage});
}

/// @nodoc
class __$$OnboardingAiStateImplCopyWithImpl<$Res>
    extends _$OnboardingAiStateCopyWithImpl<$Res, _$OnboardingAiStateImpl>
    implements _$$OnboardingAiStateImplCopyWith<$Res> {
  __$$OnboardingAiStateImplCopyWithImpl(_$OnboardingAiStateImpl _value,
      $Res Function(_$OnboardingAiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? generatedBio = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$OnboardingAiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      generatedBio: freezed == generatedBio
          ? _value.generatedBio
          : generatedBio // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnboardingAiStateImpl implements _OnboardingAiState {
  const _$OnboardingAiStateImpl(
      {required this.isLoading,
      required this.hasError,
      this.generatedBio,
      this.errorMessage});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? generatedBio;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'OnboardingAiState(isLoading: $isLoading, hasError: $hasError, generatedBio: $generatedBio, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingAiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.generatedBio, generatedBio) ||
                other.generatedBio == generatedBio) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, hasError, generatedBio, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingAiStateImplCopyWith<_$OnboardingAiStateImpl> get copyWith =>
      __$$OnboardingAiStateImplCopyWithImpl<_$OnboardingAiStateImpl>(
          this, _$identity);
}

abstract class _OnboardingAiState implements OnboardingAiState {
  const factory _OnboardingAiState(
      {required final bool isLoading,
      required final bool hasError,
      final String? generatedBio,
      final String? errorMessage}) = _$OnboardingAiStateImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get generatedBio;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$OnboardingAiStateImplCopyWith<_$OnboardingAiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
