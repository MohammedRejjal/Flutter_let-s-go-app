// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return SubCategory(
    id: json['id'] as String,
    name: json['name'] as String,
    imagUrl: json['imagUrl'] as String,
  );
}

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagUrl': instance.imagUrl,
    };