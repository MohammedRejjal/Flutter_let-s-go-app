import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

@JsonSerializable()
class Detailes {
  final String category;
  final String id;
  final String name;
  final String mainImagUrl;
  Map<String, double>? price;
  final String location;
  final double latitude;
  final double longitude;
  final String infoDetails;
  final List<String> imagesUrl;
  Map<String, String>? workhours;

  Detailes(
    this.category,
    this.price,
    this.workhours, {
    required this.id,
    required this.name,
    required this.mainImagUrl,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.infoDetails,
    required this.imagesUrl,
  });

  factory Detailes.fromJson(Map<String, dynamic> json) =>
      _$DetailesFromJson(json);

  Map<String, dynamic> toJson() => _$DetailesToJson(this);
}
