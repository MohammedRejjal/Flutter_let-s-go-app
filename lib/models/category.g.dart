// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    json['number'] as num?,
    json['name'] as String?,
    json['imgeURL'] as String?,
    json['id'] as String?,
  );
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'imgeURL': instance.imgeURL,
      'id': instance.id,
    };
