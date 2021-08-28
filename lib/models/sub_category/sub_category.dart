 import 'package:json_annotation/json_annotation.dart';


part 'sub_category.g.dart';

@JsonSerializable()
class SubCategory {
final  String id;
final  String name;
final  String imagUrl;
 
 
  SubCategory({ required this.id,required this.name,required this.imagUrl, });
 factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);

}

