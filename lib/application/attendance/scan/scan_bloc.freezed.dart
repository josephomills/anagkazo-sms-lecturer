// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res, ScanEvent>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res, $Val extends ScanEvent>
    implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

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
    extends _$ScanEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'ScanEvent.started()';
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
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
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
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ScanEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ScanDetectedImplCopyWith<$Res> {
  factory _$$ScanDetectedImplCopyWith(
          _$ScanDetectedImpl value, $Res Function(_$ScanDetectedImpl) then) =
      __$$ScanDetectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> qr});
}

/// @nodoc
class __$$ScanDetectedImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$ScanDetectedImpl>
    implements _$$ScanDetectedImplCopyWith<$Res> {
  __$$ScanDetectedImplCopyWithImpl(
      _$ScanDetectedImpl _value, $Res Function(_$ScanDetectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qr = null,
  }) {
    return _then(_$ScanDetectedImpl(
      qr: null == qr
          ? _value._qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ScanDetectedImpl implements _ScanDetected {
  const _$ScanDetectedImpl({required final Map<String, dynamic> qr}) : _qr = qr;

  final Map<String, dynamic> _qr;
  @override
  Map<String, dynamic> get qr {
    if (_qr is EqualUnmodifiableMapView) return _qr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_qr);
  }

  @override
  String toString() {
    return 'ScanEvent.scanDetected(qr: $qr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDetectedImpl &&
            const DeepCollectionEquality().equals(other._qr, _qr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_qr));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDetectedImplCopyWith<_$ScanDetectedImpl> get copyWith =>
      __$$ScanDetectedImplCopyWithImpl<_$ScanDetectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return scanDetected(qr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return scanDetected?.call(qr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanDetected != null) {
      return scanDetected(qr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return scanDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return scanDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanDetected != null) {
      return scanDetected(this);
    }
    return orElse();
  }
}

abstract class _ScanDetected implements ScanEvent {
  const factory _ScanDetected({required final Map<String, dynamic> qr}) =
      _$ScanDetectedImpl;

  Map<String, dynamic> get qr;
  @JsonKey(ignore: true)
  _$$ScanDetectedImplCopyWith<_$ScanDetectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanConfirmedImplCopyWith<$Res> {
  factory _$$ScanConfirmedImplCopyWith(
          _$ScanConfirmedImpl value, $Res Function(_$ScanConfirmedImpl) then) =
      __$$ScanConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanConfirmedImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$ScanConfirmedImpl>
    implements _$$ScanConfirmedImplCopyWith<$Res> {
  __$$ScanConfirmedImplCopyWithImpl(
      _$ScanConfirmedImpl _value, $Res Function(_$ScanConfirmedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanConfirmedImpl implements _ScanConfirmed {
  const _$ScanConfirmedImpl();

  @override
  String toString() {
    return 'ScanEvent.scanConfirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanConfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return scanConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return scanConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanConfirmed != null) {
      return scanConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return scanConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return scanConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanConfirmed != null) {
      return scanConfirmed(this);
    }
    return orElse();
  }
}

abstract class _ScanConfirmed implements ScanEvent {
  const factory _ScanConfirmed() = _$ScanConfirmedImpl;
}

/// @nodoc
abstract class _$$ScanCancelledImplCopyWith<$Res> {
  factory _$$ScanCancelledImplCopyWith(
          _$ScanCancelledImpl value, $Res Function(_$ScanCancelledImpl) then) =
      __$$ScanCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanCancelledImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$ScanCancelledImpl>
    implements _$$ScanCancelledImplCopyWith<$Res> {
  __$$ScanCancelledImplCopyWithImpl(
      _$ScanCancelledImpl _value, $Res Function(_$ScanCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanCancelledImpl implements _ScanCancelled {
  const _$ScanCancelledImpl();

  @override
  String toString() {
    return 'ScanEvent.scanCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return scanCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return scanCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanCancelled != null) {
      return scanCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return scanCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return scanCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scanCancelled != null) {
      return scanCancelled(this);
    }
    return orElse();
  }
}

abstract class _ScanCancelled implements ScanEvent {
  const factory _ScanCancelled() = _$ScanCancelledImpl;
}

/// @nodoc
abstract class _$$SelfieTakenImplCopyWith<$Res> {
  factory _$$SelfieTakenImplCopyWith(
          _$SelfieTakenImpl value, $Res Function(_$SelfieTakenImpl) then) =
      __$$SelfieTakenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? selfie});
}

/// @nodoc
class __$$SelfieTakenImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$SelfieTakenImpl>
    implements _$$SelfieTakenImplCopyWith<$Res> {
  __$$SelfieTakenImplCopyWithImpl(
      _$SelfieTakenImpl _value, $Res Function(_$SelfieTakenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selfie = freezed,
  }) {
    return _then(_$SelfieTakenImpl(
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$SelfieTakenImpl implements _SelfieTaken {
  const _$SelfieTakenImpl({this.selfie});

  @override
  final XFile? selfie;

  @override
  String toString() {
    return 'ScanEvent.selfieTaken(selfie: $selfie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelfieTakenImpl &&
            (identical(other.selfie, selfie) || other.selfie == selfie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selfie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelfieTakenImplCopyWith<_$SelfieTakenImpl> get copyWith =>
      __$$SelfieTakenImplCopyWithImpl<_$SelfieTakenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return selfieTaken(selfie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return selfieTaken?.call(selfie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (selfieTaken != null) {
      return selfieTaken(selfie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return selfieTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return selfieTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (selfieTaken != null) {
      return selfieTaken(this);
    }
    return orElse();
  }
}

abstract class _SelfieTaken implements ScanEvent {
  const factory _SelfieTaken({final XFile? selfie}) = _$SelfieTakenImpl;

  XFile? get selfie;
  @JsonKey(ignore: true)
  _$$SelfieTakenImplCopyWith<_$SelfieTakenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScannerStartedImplCopyWith<$Res> {
  factory _$$ScannerStartedImplCopyWith(_$ScannerStartedImpl value,
          $Res Function(_$ScannerStartedImpl) then) =
      __$$ScannerStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$ScannerStartedImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$ScannerStartedImpl>
    implements _$$ScannerStartedImplCopyWith<$Res> {
  __$$ScannerStartedImplCopyWithImpl(
      _$ScannerStartedImpl _value, $Res Function(_$ScannerStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ScannerStartedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScannerStartedImpl implements _ScannerStarted {
  const _$ScannerStartedImpl({required this.status});

  @override
  final bool status;

  @override
  String toString() {
    return 'ScanEvent.scannerStatusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannerStartedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannerStartedImplCopyWith<_$ScannerStartedImpl> get copyWith =>
      __$$ScannerStartedImplCopyWithImpl<_$ScannerStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return scannerStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return scannerStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scannerStatusChanged != null) {
      return scannerStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return scannerStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return scannerStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (scannerStatusChanged != null) {
      return scannerStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _ScannerStarted implements ScanEvent {
  const factory _ScannerStarted({required final bool status}) =
      _$ScannerStartedImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$ScannerStartedImplCopyWith<_$ScannerStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$YearGroupChangedImplCopyWith<$Res> {
  factory _$$YearGroupChangedImplCopyWith(_$YearGroupChangedImpl value,
          $Res Function(_$YearGroupChangedImpl) then) =
      __$$YearGroupChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? yearGroup});
}

/// @nodoc
class __$$YearGroupChangedImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$YearGroupChangedImpl>
    implements _$$YearGroupChangedImplCopyWith<$Res> {
  __$$YearGroupChangedImplCopyWithImpl(_$YearGroupChangedImpl _value,
      $Res Function(_$YearGroupChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearGroup = freezed,
  }) {
    return _then(_$YearGroupChangedImpl(
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$YearGroupChangedImpl implements _YearGroupChanged {
  const _$YearGroupChangedImpl({required this.yearGroup});

  @override
  final String? yearGroup;

  @override
  String toString() {
    return 'ScanEvent.yearGroupChanged(yearGroup: $yearGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearGroupChangedImpl &&
            (identical(other.yearGroup, yearGroup) ||
                other.yearGroup == yearGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, yearGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearGroupChangedImplCopyWith<_$YearGroupChangedImpl> get copyWith =>
      __$$YearGroupChangedImplCopyWithImpl<_$YearGroupChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, dynamic> qr) scanDetected,
    required TResult Function() scanConfirmed,
    required TResult Function() scanCancelled,
    required TResult Function(XFile? selfie) selfieTaken,
    required TResult Function(bool status) scannerStatusChanged,
    required TResult Function(String? yearGroup) yearGroupChanged,
  }) {
    return yearGroupChanged(yearGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, dynamic> qr)? scanDetected,
    TResult? Function()? scanConfirmed,
    TResult? Function()? scanCancelled,
    TResult? Function(XFile? selfie)? selfieTaken,
    TResult? Function(bool status)? scannerStatusChanged,
    TResult? Function(String? yearGroup)? yearGroupChanged,
  }) {
    return yearGroupChanged?.call(yearGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, dynamic> qr)? scanDetected,
    TResult Function()? scanConfirmed,
    TResult Function()? scanCancelled,
    TResult Function(XFile? selfie)? selfieTaken,
    TResult Function(bool status)? scannerStatusChanged,
    TResult Function(String? yearGroup)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (yearGroupChanged != null) {
      return yearGroupChanged(yearGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDetected value) scanDetected,
    required TResult Function(_ScanConfirmed value) scanConfirmed,
    required TResult Function(_ScanCancelled value) scanCancelled,
    required TResult Function(_SelfieTaken value) selfieTaken,
    required TResult Function(_ScannerStarted value) scannerStatusChanged,
    required TResult Function(_YearGroupChanged value) yearGroupChanged,
  }) {
    return yearGroupChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDetected value)? scanDetected,
    TResult? Function(_ScanConfirmed value)? scanConfirmed,
    TResult? Function(_ScanCancelled value)? scanCancelled,
    TResult? Function(_SelfieTaken value)? selfieTaken,
    TResult? Function(_ScannerStarted value)? scannerStatusChanged,
    TResult? Function(_YearGroupChanged value)? yearGroupChanged,
  }) {
    return yearGroupChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDetected value)? scanDetected,
    TResult Function(_ScanConfirmed value)? scanConfirmed,
    TResult Function(_ScanCancelled value)? scanCancelled,
    TResult Function(_SelfieTaken value)? selfieTaken,
    TResult Function(_ScannerStarted value)? scannerStatusChanged,
    TResult Function(_YearGroupChanged value)? yearGroupChanged,
    required TResult orElse(),
  }) {
    if (yearGroupChanged != null) {
      return yearGroupChanged(this);
    }
    return orElse();
  }
}

abstract class _YearGroupChanged implements ScanEvent {
  const factory _YearGroupChanged({required final String? yearGroup}) =
      _$YearGroupChangedImpl;

  String? get yearGroup;
  @JsonKey(ignore: true)
  _$$YearGroupChangedImplCopyWith<_$YearGroupChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScanState {
  bool get isScanning => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasTakenSelfie => throw _privateConstructorUsedError;
  bool get isConfirming => throw _privateConstructorUsedError;
  bool get scannerStatus => throw _privateConstructorUsedError;
  String? get yearGroup => throw _privateConstructorUsedError;
  DateTime? get scannedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get qr => throw _privateConstructorUsedError;
  XFile? get selfie => throw _privateConstructorUsedError;
  Option<EventObject> get eventOption => throw _privateConstructorUsedError;
  Option<Either<ScanFailure, ScanObject>> get failureOrScanOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanStateCopyWith<ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
  @useResult
  $Res call(
      {bool isScanning,
      bool isLoading,
      bool hasTakenSelfie,
      bool isConfirming,
      bool scannerStatus,
      String? yearGroup,
      DateTime? scannedAt,
      Map<String, dynamic>? qr,
      XFile? selfie,
      Option<EventObject> eventOption,
      Option<Either<ScanFailure, ScanObject>> failureOrScanOption});
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? isLoading = null,
    Object? hasTakenSelfie = null,
    Object? isConfirming = null,
    Object? scannerStatus = null,
    Object? yearGroup = freezed,
    Object? scannedAt = freezed,
    Object? qr = freezed,
    Object? selfie = freezed,
    Object? eventOption = null,
    Object? failureOrScanOption = null,
  }) {
    return _then(_value.copyWith(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTakenSelfie: null == hasTakenSelfie
          ? _value.hasTakenSelfie
          : hasTakenSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirming: null == isConfirming
          ? _value.isConfirming
          : isConfirming // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerStatus: null == scannerStatus
          ? _value.scannerStatus
          : scannerStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      scannedAt: freezed == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qr: freezed == qr
          ? _value.qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as XFile?,
      eventOption: null == eventOption
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
      failureOrScanOption: null == failureOrScanOption
          ? _value.failureOrScanOption
          : failureOrScanOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ScanFailure, ScanObject>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanStateImplCopyWith<$Res>
    implements $ScanStateCopyWith<$Res> {
  factory _$$ScanStateImplCopyWith(
          _$ScanStateImpl value, $Res Function(_$ScanStateImpl) then) =
      __$$ScanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isScanning,
      bool isLoading,
      bool hasTakenSelfie,
      bool isConfirming,
      bool scannerStatus,
      String? yearGroup,
      DateTime? scannedAt,
      Map<String, dynamic>? qr,
      XFile? selfie,
      Option<EventObject> eventOption,
      Option<Either<ScanFailure, ScanObject>> failureOrScanOption});
}

/// @nodoc
class __$$ScanStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanStateImpl>
    implements _$$ScanStateImplCopyWith<$Res> {
  __$$ScanStateImplCopyWithImpl(
      _$ScanStateImpl _value, $Res Function(_$ScanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? isLoading = null,
    Object? hasTakenSelfie = null,
    Object? isConfirming = null,
    Object? scannerStatus = null,
    Object? yearGroup = freezed,
    Object? scannedAt = freezed,
    Object? qr = freezed,
    Object? selfie = freezed,
    Object? eventOption = null,
    Object? failureOrScanOption = null,
  }) {
    return _then(_$ScanStateImpl(
      isScanning: null == isScanning
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasTakenSelfie: null == hasTakenSelfie
          ? _value.hasTakenSelfie
          : hasTakenSelfie // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirming: null == isConfirming
          ? _value.isConfirming
          : isConfirming // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerStatus: null == scannerStatus
          ? _value.scannerStatus
          : scannerStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      scannedAt: freezed == scannedAt
          ? _value.scannedAt
          : scannedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      qr: freezed == qr
          ? _value._qr
          : qr // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      selfie: freezed == selfie
          ? _value.selfie
          : selfie // ignore: cast_nullable_to_non_nullable
              as XFile?,
      eventOption: null == eventOption
          ? _value.eventOption
          : eventOption // ignore: cast_nullable_to_non_nullable
              as Option<EventObject>,
      failureOrScanOption: null == failureOrScanOption
          ? _value.failureOrScanOption
          : failureOrScanOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ScanFailure, ScanObject>>,
    ));
  }
}

/// @nodoc

class _$ScanStateImpl implements _ScanState {
  const _$ScanStateImpl(
      {required this.isScanning,
      required this.isLoading,
      required this.hasTakenSelfie,
      required this.isConfirming,
      required this.scannerStatus,
      required this.yearGroup,
      this.scannedAt,
      final Map<String, dynamic>? qr,
      this.selfie,
      required this.eventOption,
      required this.failureOrScanOption})
      : _qr = qr;

  @override
  final bool isScanning;
  @override
  final bool isLoading;
  @override
  final bool hasTakenSelfie;
  @override
  final bool isConfirming;
  @override
  final bool scannerStatus;
  @override
  final String? yearGroup;
  @override
  final DateTime? scannedAt;
  final Map<String, dynamic>? _qr;
  @override
  Map<String, dynamic>? get qr {
    final value = _qr;
    if (value == null) return null;
    if (_qr is EqualUnmodifiableMapView) return _qr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final XFile? selfie;
  @override
  final Option<EventObject> eventOption;
  @override
  final Option<Either<ScanFailure, ScanObject>> failureOrScanOption;

  @override
  String toString() {
    return 'ScanState(isScanning: $isScanning, isLoading: $isLoading, hasTakenSelfie: $hasTakenSelfie, isConfirming: $isConfirming, scannerStatus: $scannerStatus, yearGroup: $yearGroup, scannedAt: $scannedAt, qr: $qr, selfie: $selfie, eventOption: $eventOption, failureOrScanOption: $failureOrScanOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanStateImpl &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasTakenSelfie, hasTakenSelfie) ||
                other.hasTakenSelfie == hasTakenSelfie) &&
            (identical(other.isConfirming, isConfirming) ||
                other.isConfirming == isConfirming) &&
            (identical(other.scannerStatus, scannerStatus) ||
                other.scannerStatus == scannerStatus) &&
            (identical(other.yearGroup, yearGroup) ||
                other.yearGroup == yearGroup) &&
            (identical(other.scannedAt, scannedAt) ||
                other.scannedAt == scannedAt) &&
            const DeepCollectionEquality().equals(other._qr, _qr) &&
            (identical(other.selfie, selfie) || other.selfie == selfie) &&
            (identical(other.eventOption, eventOption) ||
                other.eventOption == eventOption) &&
            (identical(other.failureOrScanOption, failureOrScanOption) ||
                other.failureOrScanOption == failureOrScanOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isScanning,
      isLoading,
      hasTakenSelfie,
      isConfirming,
      scannerStatus,
      yearGroup,
      scannedAt,
      const DeepCollectionEquality().hash(_qr),
      selfie,
      eventOption,
      failureOrScanOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      __$$ScanStateImplCopyWithImpl<_$ScanStateImpl>(this, _$identity);
}

abstract class _ScanState implements ScanState {
  const factory _ScanState(
      {required final bool isScanning,
      required final bool isLoading,
      required final bool hasTakenSelfie,
      required final bool isConfirming,
      required final bool scannerStatus,
      required final String? yearGroup,
      final DateTime? scannedAt,
      final Map<String, dynamic>? qr,
      final XFile? selfie,
      required final Option<EventObject> eventOption,
      required final Option<Either<ScanFailure, ScanObject>>
          failureOrScanOption}) = _$ScanStateImpl;

  @override
  bool get isScanning;
  @override
  bool get isLoading;
  @override
  bool get hasTakenSelfie;
  @override
  bool get isConfirming;
  @override
  bool get scannerStatus;
  @override
  String? get yearGroup;
  @override
  DateTime? get scannedAt;
  @override
  Map<String, dynamic>? get qr;
  @override
  XFile? get selfie;
  @override
  Option<EventObject> get eventOption;
  @override
  Option<Either<ScanFailure, ScanObject>> get failureOrScanOption;
  @override
  @JsonKey(ignore: true)
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
