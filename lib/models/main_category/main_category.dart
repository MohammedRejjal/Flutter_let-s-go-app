import 'package:ecommerce_final_project/models/sub_category/sub_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main_category.g.dart';

@JsonSerializable()
class MainCategory {
  final String name;
  final String imageUrl;
  final String icon;

  MainCategory({
    required this.name,
    required this.imageUrl,
    required this.icon
  });
  factory MainCategory.fromJson(Map<String, dynamic> json) =>
      _$MainCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$MainCategoryToJson(this);
}
