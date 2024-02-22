// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDTOImpl _$$RegisterDTOImplFromJson(Map<String, dynamic> json) =>
    _$RegisterDTOImpl(
      password: json['password'] as String,
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
    );

Map<String, dynamic> _$$RegisterDTOImplToJson(_$RegisterDTOImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
