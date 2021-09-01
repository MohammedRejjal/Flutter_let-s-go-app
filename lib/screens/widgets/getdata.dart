 import 'package:ecommerce_final_project/models/main_category/main_category.dart';
 import 'package:ecommerce_final_project/models/sub_category/sub_category.dart';
 
MainCategory setmaincategorydata({
  required String maincategoryName,
  required String maincategoryImageUrl,
  required String maincategoryIcon ,
}) {
  var maincategory = MainCategory(
    icon:maincategoryIcon ,
    name: maincategoryName,
    imageUrl: maincategoryImageUrl,
  );

  return maincategory;
}

SubCategory setSubCategorydata(
    {required String id, required String name, required String imagUrl}) {
  var subCategory = SubCategory(id: id, name: name, imagUrl: imagUrl);
  return subCategory;
}
