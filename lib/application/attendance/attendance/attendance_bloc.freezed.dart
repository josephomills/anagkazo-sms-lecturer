// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttendanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllScans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllScans value) getAllScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScans value)? getAllScans,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScans value)? getAllScans,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEventCopyWith<$Res> {
  factory $AttendanceEventCopyWith(
          AttendanceEvent value, $Res Function(AttendanceEvent) then) =
      _$AttendanceEventCopyWithImpl<$Res, AttendanceEvent>;
}

/// @nodoc
class _$AttendanceEventCopyWithImpl<$Res, $Val extends AttendanceEvent>
    implements $AttendanceEventCopyWith<$Res> {
  _$AttendanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAllScansCopyWith<$Res> {
  factory _$$_GetAllScansCopyWith(
          _$_GetAllScans value, $Res Function(_$_GetAllScans) then) =
      __$$_GetAllScansCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllScansCopyWithImpl<$Res>
    extends _$AttendanceEventCopyWithImpl<$Res, _$_GetAllScans>
    implements _$$_GetAllScansCopyWith<$Res> {
  __$$_GetAllScansCopyWithImpl(
      _$_GetAllScans _value, $Res Function(_$_GetAllScans) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllScans implements _GetAllScans {
  const _$_GetAllScans();

  @override
  String toString() {
    return 'AttendanceEvent.getAllScans()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllScans);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllScans,
  }) {
    return getAllScans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllScans,
  }) {
    return getAllScans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllScans,
    required TResult orElse(),
  }) {
    if (getAllScans != null) {
      return getAllScans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllScans value) getAllScans,
  }) {
    return getAllScans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllScans value)? getAllScans,
  }) {
    return getAllScans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllScans value)? getAllScans,
    required TResult orElse(),
  }) {
    if (getAllScans != null) {
      return getAllScans(this);
    }
    return orElse();
  }
}

abstract class _GetAllScans implements AttendanceEvent {
  const factory _GetAllScans() = _$_GetAllScans;
}

/// @nodoc
mixin _$AttendanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<AttendanceFailure, List<ScanObject>> get failureOrScans =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
          AttendanceState value, $Res Function(AttendanceState) then) =
      _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call(
      {bool isLoading,
      Either<AttendanceFailure, List<ScanObject>> failureOrScans});
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrScans = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrScans: null == failureOrScans
          ? _value.failureOrScans
          : failureOrScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceStateCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$_AttendanceStateCopyWith(
          _$_AttendanceState value, $Res Function(_$_AttendanceState) then) =
      __$$_AttendanceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Either<AttendanceFailure, List<ScanObject>> failureOrScans});
}

/// @nodoc
class __$$_AttendanceStateCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$_AttendanceState>
    implements _$$_AttendanceStateCopyWith<$Res> {
  __$$_AttendanceStateCopyWithImpl(
      _$_AttendanceState _value, $Res Function(_$_AttendanceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrScans = null,
  }) {
    return _then(_$_AttendanceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrScans: null == failureOrScans
          ? _value.failureOrScans
          : failureOrScans // ignore: cast_nullable_to_non_nullable
              as Either<AttendanceFailure, List<ScanObject>>,
    ));
  }
}

/// @nodoc

class _$_AttendanceState implements _AttendanceState {
  const _$_AttendanceState(
      {required this.isLoading, required this.failureOrScans});

  @override
  final bool isLoading;
  @override
  final Either<AttendanceFailure, List<ScanObject>> failureOrScans;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, failureOrScans: $failureOrScans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrScans, failureOrScans) ||
                other.failureOrScans == failureOrScans));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failureOrScans);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      __$$_AttendanceStateCopyWithImpl<_$_AttendanceState>(this, _$identity);
}

abstract class _AttendanceState implements AttendanceState {
  const factory _AttendanceState(
      {required final bool isLoading,
      required final Either<AttendanceFailure, List<ScanObject>>
          failureOrScans}) = _$_AttendanceState;

  @override
  bool get isLoading;
  @override
  Either<AttendanceFailure, List<ScanObject>> get failureOrScans;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStateCopyWith<_$_AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
