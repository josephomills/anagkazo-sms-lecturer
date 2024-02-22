// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan.failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult? Function(String? message)? invalidEventError,
    TResult? Function(String? message)? invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DuplicateScanError value)? duplicateScanError,
    TResult? Function(_InvalidEventError value)? invalidEventError,
    TResult? Function(_InvalidScanError value)? invalidScanError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanFailureCopyWith<ScanFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanFailureCopyWith<$Res> {
  factory $ScanFailureCopyWith(
          ScanFailure value, $Res Function(ScanFailure) then) =
      _$ScanFailureCopyWithImpl<$Res, ScanFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ScanFailureCopyWithImpl<$Res, $Val extends ScanFailure>
    implements $ScanFailureCopyWith<$Res> {
  _$ScanFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult? Function(String? message)? invalidEventError,
    TResult? Function(String? message)? invalidScanError,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DuplicateScanError value)? duplicateScanError,
    TResult? Function(_InvalidEventError value)? invalidEventError,
    TResult? Function(_InvalidScanError value)? invalidScanError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ScanFailure {
  const factory _ServerError({final String? message}) = _$ServerErrorImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DuplicateScanErrorImplCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$DuplicateScanErrorImplCopyWith(_$DuplicateScanErrorImpl value,
          $Res Function(_$DuplicateScanErrorImpl) then) =
      __$$DuplicateScanErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, ScanObject? scanObject});
}

/// @nodoc
class __$$DuplicateScanErrorImplCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res, _$DuplicateScanErrorImpl>
    implements _$$DuplicateScanErrorImplCopyWith<$Res> {
  __$$DuplicateScanErrorImplCopyWithImpl(_$DuplicateScanErrorImpl _value,
      $Res Function(_$DuplicateScanErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? scanObject = freezed,
  }) {
    return _then(_$DuplicateScanErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      scanObject: freezed == scanObject
          ? _value.scanObject
          : scanObject // ignore: cast_nullable_to_non_nullable
              as ScanObject?,
    ));
  }
}

/// @nodoc

class _$DuplicateScanErrorImpl implements _DuplicateScanError {
  const _$DuplicateScanErrorImpl({this.message, this.scanObject});

  @override
  final String? message;
  @override
  final ScanObject? scanObject;

  @override
  String toString() {
    return 'ScanFailure.duplicateScanError(message: $message, scanObject: $scanObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuplicateScanErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.scanObject, scanObject) ||
                other.scanObject == scanObject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, scanObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DuplicateScanErrorImplCopyWith<_$DuplicateScanErrorImpl> get copyWith =>
      __$$DuplicateScanErrorImplCopyWithImpl<_$DuplicateScanErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return duplicateScanError(message, scanObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult? Function(String? message)? invalidEventError,
    TResult? Function(String? message)? invalidScanError,
  }) {
    return duplicateScanError?.call(message, scanObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (duplicateScanError != null) {
      return duplicateScanError(message, scanObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return duplicateScanError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DuplicateScanError value)? duplicateScanError,
    TResult? Function(_InvalidEventError value)? invalidEventError,
    TResult? Function(_InvalidScanError value)? invalidScanError,
  }) {
    return duplicateScanError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (duplicateScanError != null) {
      return duplicateScanError(this);
    }
    return orElse();
  }
}

abstract class _DuplicateScanError implements ScanFailure {
  const factory _DuplicateScanError(
      {final String? message,
      final ScanObject? scanObject}) = _$DuplicateScanErrorImpl;

  @override
  String? get message;
  ScanObject? get scanObject;
  @override
  @JsonKey(ignore: true)
  _$$DuplicateScanErrorImplCopyWith<_$DuplicateScanErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEventErrorImplCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$InvalidEventErrorImplCopyWith(_$InvalidEventErrorImpl value,
          $Res Function(_$InvalidEventErrorImpl) then) =
      __$$InvalidEventErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidEventErrorImplCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res, _$InvalidEventErrorImpl>
    implements _$$InvalidEventErrorImplCopyWith<$Res> {
  __$$InvalidEventErrorImplCopyWithImpl(_$InvalidEventErrorImpl _value,
      $Res Function(_$InvalidEventErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidEventErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidEventErrorImpl implements _InvalidEventError {
  const _$InvalidEventErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.invalidEventError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEventErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEventErrorImplCopyWith<_$InvalidEventErrorImpl> get copyWith =>
      __$$InvalidEventErrorImplCopyWithImpl<_$InvalidEventErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return invalidEventError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult? Function(String? message)? invalidEventError,
    TResult? Function(String? message)? invalidScanError,
  }) {
    return invalidEventError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidEventError != null) {
      return invalidEventError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return invalidEventError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DuplicateScanError value)? duplicateScanError,
    TResult? Function(_InvalidEventError value)? invalidEventError,
    TResult? Function(_InvalidScanError value)? invalidScanError,
  }) {
    return invalidEventError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidEventError != null) {
      return invalidEventError(this);
    }
    return orElse();
  }
}

abstract class _InvalidEventError implements ScanFailure {
  const factory _InvalidEventError({final String? message}) =
      _$InvalidEventErrorImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEventErrorImplCopyWith<_$InvalidEventErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidScanErrorImplCopyWith<$Res>
    implements $ScanFailureCopyWith<$Res> {
  factory _$$InvalidScanErrorImplCopyWith(_$InvalidScanErrorImpl value,
          $Res Function(_$InvalidScanErrorImpl) then) =
      __$$InvalidScanErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InvalidScanErrorImplCopyWithImpl<$Res>
    extends _$ScanFailureCopyWithImpl<$Res, _$InvalidScanErrorImpl>
    implements _$$InvalidScanErrorImplCopyWith<$Res> {
  __$$InvalidScanErrorImplCopyWithImpl(_$InvalidScanErrorImpl _value,
      $Res Function(_$InvalidScanErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InvalidScanErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidScanErrorImpl implements _InvalidScanError {
  const _$InvalidScanErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ScanFailure.invalidScanError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidScanErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidScanErrorImplCopyWith<_$InvalidScanErrorImpl> get copyWith =>
      __$$InvalidScanErrorImplCopyWithImpl<_$InvalidScanErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) serverError,
    required TResult Function(String? message, ScanObject? scanObject)
        duplicateScanError,
    required TResult Function(String? message) invalidEventError,
    required TResult Function(String? message) invalidScanError,
  }) {
    return invalidScanError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? serverError,
    TResult? Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult? Function(String? message)? invalidEventError,
    TResult? Function(String? message)? invalidScanError,
  }) {
    return invalidScanError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? serverError,
    TResult Function(String? message, ScanObject? scanObject)?
        duplicateScanError,
    TResult Function(String? message)? invalidEventError,
    TResult Function(String? message)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidScanError != null) {
      return invalidScanError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_DuplicateScanError value) duplicateScanError,
    required TResult Function(_InvalidEventError value) invalidEventError,
    required TResult Function(_InvalidScanError value) invalidScanError,
  }) {
    return invalidScanError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_DuplicateScanError value)? duplicateScanError,
    TResult? Function(_InvalidEventError value)? invalidEventError,
    TResult? Function(_InvalidScanError value)? invalidScanError,
  }) {
    return invalidScanError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_DuplicateScanError value)? duplicateScanError,
    TResult Function(_InvalidEventError value)? invalidEventError,
    TResult Function(_InvalidScanError value)? invalidScanError,
    required TResult orElse(),
  }) {
    if (invalidScanError != null) {
      return invalidScanError(this);
    }
    return orElse();
  }
}

abstract class _InvalidScanError implements ScanFailure {
  const factory _InvalidScanError({final String? message}) =
      _$InvalidScanErrorImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InvalidScanErrorImplCopyWith<_$InvalidScanErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
