// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecificDetailes _$SpecificDetailesFromJson(Map<String, dynamic> json) {
  return SpecificDetailes(
    name: json['name'] as String,
    mainImagUrl: json['mainImagUrl'] as String,
    price: (json['price'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
    location: json['location'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    infoDetails: json['infoDetails'] as String,
    imagesUrl:
        (json['imagesUrl'] as List<dynamic>).map((e) => e as String).toList(),
    workhours: Map<String, String>.from(json['workhours'] as Map),
  );
}

Map<String, dynamic> _$SpecificDetailesToJson(SpecificDetailes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mainImagUrl': instance.mainImagUrl,
      'price': instance.price,
      'location': instance.location,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'infoDetails': instance.infoDetails,
      'imagesUrl': instance.imagesUrl,
      'workhours': instance.workhours,
    };
