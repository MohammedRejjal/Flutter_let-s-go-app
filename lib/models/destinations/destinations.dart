 
import 'package:json_annotation/json_annotation.dart';

part 'destinations.g.dart';

@JsonSerializable()
class Destinations {
  final String name;
  final String imageUrl;
  

  Destinations({
    required this.name,
    required this.imageUrl,

  });
  factory Destinations.fromJson(Map<String, dynamic> json) =>
      _$DestinationsFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationsToJson(this);
}
