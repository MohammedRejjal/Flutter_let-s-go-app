// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Detailes _$DetailesFromJson(Map<String, dynamic> json) {
  return Detailes(
    json['category'] as String,
    (json['price'] as List<dynamic>?)
        ?.map((e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, (e as num).toDouble()),
            ))
        .toList(),
    (json['workhours'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    id: json['id'] as String,
    name: json['name'] as String,
    mainImagUrl: json['mainImagUrl'] as String,
    location: json['location'] as String,
    latitude: (json['latitude'] as num).toDouble(),
    longitude: (json['longitude'] as num).toDouble(),
    infoDetails: json['infoDetails'] as String,
    imagesUrl:
        (json['imagesUrl'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$DetailesToJson(Detailes instance) => <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
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
