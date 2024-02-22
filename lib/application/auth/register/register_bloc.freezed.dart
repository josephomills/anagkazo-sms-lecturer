// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstnameChangedImplCopyWith<$Res> {
  factory _$$FirstnameChangedImplCopyWith(_$FirstnameChangedImpl value,
          $Res Function(_$FirstnameChangedImpl) then) =
      __$$FirstnameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstname});
}

/// @nodoc
class __$$FirstnameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$FirstnameChangedImpl>
    implements _$$FirstnameChangedImplCopyWith<$Res> {
  __$$FirstnameChangedImplCopyWithImpl(_$FirstnameChangedImpl _value,
      $Res Function(_$FirstnameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
  }) {
    return _then(_$FirstnameChangedImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstnameChangedImpl implements FirstnameChanged {
  const _$FirstnameChangedImpl({required this.firstname});

  @override
  final String firstname;

  @override
  String toString() {
    return 'RegisterEvent.firstnameChanged(firstname: $firstname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstnameChangedImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstnameChangedImplCopyWith<_$FirstnameChangedImpl> get copyWith =>
      __$$FirstnameChangedImplCopyWithImpl<_$FirstnameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return firstnameChanged(firstname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return firstnameChanged?.call(firstname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(firstname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return firstnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return firstnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (firstnameChanged != null) {
      return firstnameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstnameChanged implements RegisterEvent {
  const factory FirstnameChanged({required final String firstname}) =
      _$FirstnameChangedImpl;

  String get firstname;
  @JsonKey(ignore: true)
  _$$FirstnameChangedImplCopyWith<_$FirstnameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastnameChangedImplCopyWith<$Res> {
  factory _$$LastnameChangedImplCopyWith(_$LastnameChangedImpl value,
          $Res Function(_$LastnameChangedImpl) then) =
      __$$LastnameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastname});
}

/// @nodoc
class __$$LastnameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$LastnameChangedImpl>
    implements _$$LastnameChangedImplCopyWith<$Res> {
  __$$LastnameChangedImplCopyWithImpl(
      _$LastnameChangedImpl _value, $Res Function(_$LastnameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastname = null,
  }) {
    return _then(_$LastnameChangedImpl(
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastnameChangedImpl implements LastnameChanged {
  const _$LastnameChangedImpl({required this.lastname});

  @override
  final String lastname;

  @override
  String toString() {
    return 'RegisterEvent.lastnameChanged(lastname: $lastname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastnameChangedImpl &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastnameChangedImplCopyWith<_$LastnameChangedImpl> get copyWith =>
      __$$LastnameChangedImplCopyWithImpl<_$LastnameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return lastnameChanged(lastname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return lastnameChanged?.call(lastname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(lastname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return lastnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return lastnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (lastnameChanged != null) {
      return lastnameChanged(this);
    }
    return orElse();
  }
}

abstract class LastnameChanged implements RegisterEvent {
  const factory LastnameChanged({required final String lastname}) =
      _$LastnameChangedImpl;

  String get lastname;
  @JsonKey(ignore: true)
  _$$LastnameChangedImplCopyWith<_$LastnameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements EmailChanged {
  const _$EmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  const factory EmailChanged({required final String email}) =
      _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged({required final String password}) =
      _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterButtonPressedImplCopyWith<$Res> {
  factory _$$RegisterButtonPressedImplCopyWith(
          _$RegisterButtonPressedImpl value,
          $Res Function(_$RegisterButtonPressedImpl) then) =
      __$$RegisterButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$RegisterButtonPressedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterButtonPressedImpl>
    implements _$$RegisterButtonPressedImplCopyWith<$Res> {
  __$$RegisterButtonPressedImplCopyWithImpl(_$RegisterButtonPressedImpl _value,
      $Res Function(_$RegisterButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$RegisterButtonPressedImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$RegisterButtonPressedImpl implements RegisterButtonPressed {
  const _$RegisterButtonPressedImpl({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'RegisterEvent.registerButtonPressed(formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterButtonPressedImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterButtonPressedImplCopyWith<_$RegisterButtonPressedImpl>
      get copyWith => __$$RegisterButtonPressedImplCopyWithImpl<
          _$RegisterButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstname) firstnameChanged,
    required TResult Function(String lastname) lastnameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(GlobalKey<FormState> formKey)
        registerButtonPressed,
  }) {
    return registerButtonPressed(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstname)? firstnameChanged,
    TResult? Function(String lastname)? lastnameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(GlobalKey<FormState> formKey)? registerButtonPressed,
  }) {
    return registerButtonPressed?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstname)? firstnameChanged,
    TResult Function(String lastname)? lastnameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(GlobalKey<FormState> formKey)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (registerButtonPressed != null) {
      return registerButtonPressed(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstnameChanged value) firstnameChanged,
    required TResult Function(LastnameChanged value) lastnameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterButtonPressed value)
        registerButtonPressed,
  }) {
    return registerButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstnameChanged value)? firstnameChanged,
    TResult? Function(LastnameChanged value)? lastnameChanged,
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(RegisterButtonPressed value)? registerButtonPressed,
  }) {
    return registerButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstnameChanged value)? firstnameChanged,
    TResult Function(LastnameChanged value)? lastnameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterButtonPressed value)? registerButtonPressed,
    required TResult orElse(),
  }) {
    if (registerButtonPressed != null) {
      return registerButtonPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterButtonPressed implements RegisterEvent {
  const factory RegisterButtonPressed(
          {required final GlobalKey<FormState> formKey}) =
      _$RegisterButtonPressedImpl;

  GlobalKey<FormState> get formKey;
  @JsonKey(ignore: true)
  _$$RegisterButtonPressedImplCopyWith<_$RegisterButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get validateFields => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      String password,
      bool isLoading,
      bool validateFields,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
    Object? validateFields = null,
    Object? authFailureOrUnitOption = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrUnitOption: null == authFailureOrUnitOption
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      String password,
      bool isLoading,
      bool validateFields,
      Option<Either<AuthFailure, Unit>> authFailureOrUnitOption});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? password = null,
    Object? isLoading = null,
    Object? validateFields = null,
    Object? authFailureOrUnitOption = null,
  }) {
    return _then(_$RegisterStateImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFields: null == validateFields
          ? _value.validateFields
          : validateFields // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrUnitOption: null == authFailureOrUnitOption
          ? _value.authFailureOrUnitOption
          : authFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.firstname = "",
      this.lastname = "",
      this.email = "",
      this.password = "",
      this.isLoading = false,
      this.validateFields = false,
      this.authFailureOrUnitOption = const None()});

  @override
  @JsonKey()
  final String firstname;
  @override
  @JsonKey()
  final String lastname;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool validateFields;
  @override
  @JsonKey()
  final Option<Either<AuthFailure, Unit>> authFailureOrUnitOption;

  @override
  String toString() {
    return 'RegisterState(firstname: $firstname, lastname: $lastname, email: $email, password: $password, isLoading: $isLoading, validateFields: $validateFields, authFailureOrUnitOption: $authFailureOrUnitOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.validateFields, validateFields) ||
                other.validateFields == validateFields) &&
            (identical(
                    other.authFailureOrUnitOption, authFailureOrUnitOption) ||
                other.authFailureOrUnitOption == authFailureOrUnitOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname, email,
      password, isLoading, validateFields, authFailureOrUnitOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {final String firstname,
          final String lastname,
          final String email,
          final String password,
          final bool isLoading,
          final bool validateFields,
          final Option<Either<AuthFailure, Unit>> authFailureOrUnitOption}) =
      _$RegisterStateImpl;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isLoading;
  @override
  bool get validateFields;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrUnitOption;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
