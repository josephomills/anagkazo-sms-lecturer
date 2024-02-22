// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
    required TResult Function() classesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
    TResult? Function()? classesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    TResult Function()? classesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
    required TResult Function(_ClassesFetched value) classesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
    TResult? Function(_ClassesFetched value)? classesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    TResult Function(_ClassesFetched value)? classesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
    required TResult Function() classesFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
    TResult? Function()? classesFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    TResult Function()? classesFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
    required TResult Function(_ClassesFetched value) classesFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
    TResult? Function(_ClassesFetched value)? classesFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    TResult Function(_ClassesFetched value)? classesFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ThemeModeToggledImplCopyWith<$Res> {
  factory _$$ThemeModeToggledImplCopyWith(_$ThemeModeToggledImpl value,
          $Res Function(_$ThemeModeToggledImpl) then) =
      __$$ThemeModeToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeModeToggledImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ThemeModeToggledImpl>
    implements _$$ThemeModeToggledImplCopyWith<$Res> {
  __$$ThemeModeToggledImplCopyWithImpl(_$ThemeModeToggledImpl _value,
      $Res Function(_$ThemeModeToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeModeToggledImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeModeToggledImpl implements _ThemeModeToggled {
  const _$ThemeModeToggledImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'AppEvent.themeModeToggled(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModeToggledImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeModeToggledImplCopyWith<_$ThemeModeToggledImpl> get copyWith =>
      __$$ThemeModeToggledImplCopyWithImpl<_$ThemeModeToggledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
    required TResult Function() classesFetched,
  }) {
    return themeModeToggled(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
    TResult? Function()? classesFetched,
  }) {
    return themeModeToggled?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    TResult Function()? classesFetched,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
    required TResult Function(_ClassesFetched value) classesFetched,
  }) {
    return themeModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
    TResult? Function(_ClassesFetched value)? classesFetched,
  }) {
    return themeModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    TResult Function(_ClassesFetched value)? classesFetched,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeToggled implements AppEvent {
  const factory _ThemeModeToggled({required final ThemeMode themeMode}) =
      _$ThemeModeToggledImpl;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ThemeModeToggledImplCopyWith<_$ThemeModeToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RotationsFetchedImplCopyWith<$Res> {
  factory _$$RotationsFetchedImplCopyWith(_$RotationsFetchedImpl value,
          $Res Function(_$RotationsFetchedImpl) then) =
      __$$RotationsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RotationsFetchedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$RotationsFetchedImpl>
    implements _$$RotationsFetchedImplCopyWith<$Res> {
  __$$RotationsFetchedImplCopyWithImpl(_$RotationsFetchedImpl _value,
      $Res Function(_$RotationsFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RotationsFetchedImpl implements _RotationsFetched {
  const _$RotationsFetchedImpl();

  @override
  String toString() {
    return 'AppEvent.rotationsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RotationsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
    required TResult Function() classesFetched,
  }) {
    return rotationsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
    TResult? Function()? classesFetched,
  }) {
    return rotationsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    TResult Function()? classesFetched,
    required TResult orElse(),
  }) {
    if (rotationsFetched != null) {
      return rotationsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
    required TResult Function(_ClassesFetched value) classesFetched,
  }) {
    return rotationsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
    TResult? Function(_ClassesFetched value)? classesFetched,
  }) {
    return rotationsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    TResult Function(_ClassesFetched value)? classesFetched,
    required TResult orElse(),
  }) {
    if (rotationsFetched != null) {
      return rotationsFetched(this);
    }
    return orElse();
  }
}

abstract class _RotationsFetched implements AppEvent {
  const factory _RotationsFetched() = _$RotationsFetchedImpl;
}

/// @nodoc
abstract class _$$ClassesFetchedImplCopyWith<$Res> {
  factory _$$ClassesFetchedImplCopyWith(_$ClassesFetchedImpl value,
          $Res Function(_$ClassesFetchedImpl) then) =
      __$$ClassesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClassesFetchedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$ClassesFetchedImpl>
    implements _$$ClassesFetchedImplCopyWith<$Res> {
  __$$ClassesFetchedImplCopyWithImpl(
      _$ClassesFetchedImpl _value, $Res Function(_$ClassesFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClassesFetchedImpl implements _ClassesFetched {
  const _$ClassesFetchedImpl();

  @override
  String toString() {
    return 'AppEvent.classesFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClassesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ThemeMode themeMode) themeModeToggled,
    required TResult Function() rotationsFetched,
    required TResult Function() classesFetched,
  }) {
    return classesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ThemeMode themeMode)? themeModeToggled,
    TResult? Function()? rotationsFetched,
    TResult? Function()? classesFetched,
  }) {
    return classesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ThemeMode themeMode)? themeModeToggled,
    TResult Function()? rotationsFetched,
    TResult Function()? classesFetched,
    required TResult orElse(),
  }) {
    if (classesFetched != null) {
      return classesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
    required TResult Function(_RotationsFetched value) rotationsFetched,
    required TResult Function(_ClassesFetched value) classesFetched,
  }) {
    return classesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
    TResult? Function(_RotationsFetched value)? rotationsFetched,
    TResult? Function(_ClassesFetched value)? classesFetched,
  }) {
    return classesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    TResult Function(_RotationsFetched value)? rotationsFetched,
    TResult Function(_ClassesFetched value)? classesFetched,
    required TResult orElse(),
  }) {
    if (classesFetched != null) {
      return classesFetched(this);
    }
    return orElse();
  }
}

abstract class _ClassesFetched implements AppEvent {
  const factory _ClassesFetched() = _$ClassesFetchedImpl;
}

/// @nodoc
mixin _$AppState {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  Option<Either<AppFailure, List<RotationObject>>>
      get failureOrRotationsOption => throw _privateConstructorUsedError;
  Option<Either<AppFailure, List<YearGroupObject>>>
      get failureOrYearGroupListOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Option<Either<AppFailure, List<RotationObject>>> failureOrRotationsOption,
      Option<Either<AppFailure, List<YearGroupObject>>>
          failureOrYearGroupListOption,
      bool isLoading});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? failureOrRotationsOption = null,
    Object? failureOrYearGroupListOption = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      failureOrRotationsOption: null == failureOrRotationsOption
          ? _value.failureOrRotationsOption
          : failureOrRotationsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<RotationObject>>>,
      failureOrYearGroupListOption: null == failureOrYearGroupListOption
          ? _value.failureOrYearGroupListOption
          : failureOrYearGroupListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<YearGroupObject>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode themeMode,
      Option<Either<AppFailure, List<RotationObject>>> failureOrRotationsOption,
      Option<Either<AppFailure, List<YearGroupObject>>>
          failureOrYearGroupListOption,
      bool isLoading});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? failureOrRotationsOption = null,
    Object? failureOrYearGroupListOption = null,
    Object? isLoading = null,
  }) {
    return _then(_$AppStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      failureOrRotationsOption: null == failureOrRotationsOption
          ? _value.failureOrRotationsOption
          : failureOrRotationsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<RotationObject>>>,
      failureOrYearGroupListOption: null == failureOrYearGroupListOption
          ? _value.failureOrYearGroupListOption
          : failureOrYearGroupListOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<YearGroupObject>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl(
      {required this.themeMode,
      required this.failureOrRotationsOption,
      required this.failureOrYearGroupListOption,
      required this.isLoading});

  @override
  final ThemeMode themeMode;
  @override
  final Option<Either<AppFailure, List<RotationObject>>>
      failureOrRotationsOption;
  @override
  final Option<Either<AppFailure, List<YearGroupObject>>>
      failureOrYearGroupListOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(themeMode: $themeMode, failureOrRotationsOption: $failureOrRotationsOption, failureOrYearGroupListOption: $failureOrYearGroupListOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(
                    other.failureOrRotationsOption, failureOrRotationsOption) ||
                other.failureOrRotationsOption == failureOrRotationsOption) &&
            (identical(other.failureOrYearGroupListOption,
                    failureOrYearGroupListOption) ||
                other.failureOrYearGroupListOption ==
                    failureOrYearGroupListOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode,
      failureOrRotationsOption, failureOrYearGroupListOption, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {required final ThemeMode themeMode,
      required final Option<Either<AppFailure, List<RotationObject>>>
          failureOrRotationsOption,
      required final Option<Either<AppFailure, List<YearGroupObject>>>
          failureOrYearGroupListOption,
      required final bool isLoading}) = _$AppStateImpl;

  @override
  ThemeMode get themeMode;
  @override
  Option<Either<AppFailure, List<RotationObject>>> get failureOrRotationsOption;
  @override
  Option<Either<AppFailure, List<YearGroupObject>>>
      get failureOrYearGroupListOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
