// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    number: json['number'] as num,
    name: json['name'] as String,
    imgeURL: json['imgeURL'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'imgeURL': instance.imgeURL,
      'id': instance.id,
    };
