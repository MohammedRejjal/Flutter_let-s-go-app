import 'package:json_annotation/json_annotation.dart';


part '../users.g.dart';

@JsonSerializable()
class Category {
  num number;
  String  name;
  String  imgeURL;
  String  id;
  Category({required this.number,required this.name,required this.imgeURL,required this.id});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

}
