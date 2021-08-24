import 'package:json_annotation/json_annotation.dart';

part 'specific_details.g.dart';

@JsonSerializable()
class SpecificDetailes {
final  String name;
final  String mainImagUrl;
final  Map<String, double> price;
final  String location;
final  double latitude;
final  double longitude;
final  String infoDetails;
final  List<String> imagesUrl ;
final  Map<String, String> workhours;
 
  SpecificDetailes({required this.name,required this.mainImagUrl,required this.price,required this.location,required this.latitude,required this.longitude,required this.infoDetails,required this.imagesUrl,required this.workhours, });

factory SpecificDetailes.fromJson(Map<String, dynamic> json) =>

      _$SpecificDetailesFromJson(json);



  Map<String, dynamic> toJson() => _$SpecificDetailesToJson(this);
}