// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    number: json['number'] as int,
    name: json['name'] as String,
    email: json['email'] as String,
    password: json['password'] as String,
    favirateList: (json['favirateList'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    history:
        (json['history'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'email': instance.email,
      'favirateList': instance.favirateList,
      'password': instance.password,
      'history': instance.history,
    };
