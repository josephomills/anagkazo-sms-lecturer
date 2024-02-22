// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDTO _$RegisterDTOFromJson(Map<String, dynamic> json) {
  return _RegisterDTO.fromJson(json);
}

/// @nodoc
mixin _$RegisterDTO {
  String get password => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDTOCopyWith<RegisterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDTOCopyWith<$Res> {
  factory $RegisterDTOCopyWith(
          RegisterDTO value, $Res Function(RegisterDTO) then) =
      _$RegisterDTOCopyWithImpl<$Res, RegisterDTO>;
  @useResult
  $Res call({String password, String email, String firstname, String lastname});
}

/// @nodoc
class _$RegisterDTOCopyWithImpl<$Res, $Val extends RegisterDTO>
    implements $RegisterDTOCopyWith<$Res> {
  _$RegisterDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterDTOImplCopyWith<$Res>
    implements $RegisterDTOCopyWith<$Res> {
  factory _$$RegisterDTOImplCopyWith(
          _$RegisterDTOImpl value, $Res Function(_$RegisterDTOImpl) then) =
      __$$RegisterDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, String email, String firstname, String lastname});
}

/// @nodoc
class __$$RegisterDTOImplCopyWithImpl<$Res>
    extends _$RegisterDTOCopyWithImpl<$Res, _$RegisterDTOImpl>
    implements _$$RegisterDTOImplCopyWith<$Res> {
  __$$RegisterDTOImplCopyWithImpl(
      _$RegisterDTOImpl _value, $Res Function(_$RegisterDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
    Object? firstname = null,
    Object? lastname = null,
  }) {
    return _then(_$RegisterDTOImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDTOImpl implements _RegisterDTO {
  const _$RegisterDTOImpl(
      {required this.password,
      required this.email,
      required this.firstname,
      required this.lastname});

  factory _$RegisterDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDTOImplFromJson(json);

  @override
  final String password;
  @override
  final String email;
  @override
  final String firstname;
  @override
  final String lastname;

  @override
  String toString() {
    return 'RegisterDTO(password: $password, email: $email, firstname: $firstname, lastname: $lastname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDTOImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, password, email, firstname, lastname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDTOImplCopyWith<_$RegisterDTOImpl> get copyWith =>
      __$$RegisterDTOImplCopyWithImpl<_$RegisterDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDTOImplToJson(
      this,
    );
  }
}

abstract class _RegisterDTO implements RegisterDTO {
  const factory _RegisterDTO(
      {required final String password,
      required final String email,
      required final String firstname,
      required final String lastname}) = _$RegisterDTOImpl;

  factory _RegisterDTO.fromJson(Map<String, dynamic> json) =
      _$RegisterDTOImpl.fromJson;

  @override
  String get password;
  @override
  String get email;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDTOImplCopyWith<_$RegisterDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
