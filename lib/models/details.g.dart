// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return Details(
    specific_detailes: (json['specific_detailes'] as List<dynamic>)
        .map((e) => SpecificDetailes.fromJson(e as Map<String, dynamic>))
        .toList(),
    name: json['name'] as String,
    imagUrl: json['imagUrl'] as String,
    price: json['price'] as int,
    location: json['location'] as String,
    faverate: json['faverate'] as bool,
  );
}

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'name': instance.name,
      'imagUrl': instance.imagUrl,
      'price': instance.price,
      'location': instance.location,
      'faverate': instance.faverate,
      'specific_detailes': instance.specific_detailes,
    };
