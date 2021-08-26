import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/models/main_category.dart';
import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/models/sub_category.dart';
import 'package:flutter/cupertino.dart';

MainCategory setmaincategorydata({
  required String maincategory_name,
  required String maincategory_imageUrl,
  required String maincategory_icon ,
}) {
  var maincategory = MainCategory(
    icon:maincategory_icon ,
    name: maincategory_name,
    imageUrl: maincategory_imageUrl,
  );

  return maincategory;
}

SubCategory setSubCategorydata(
    {required String id, required String name, required String imagUrl}) {
  var subCategory = SubCategory(id: id, name: name, imagUrl: imagUrl);
  return subCategory;
}
