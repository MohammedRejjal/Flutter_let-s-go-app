import 'package:ecommerce_final_project/models/sub_category/sub_category.dart';
 import 'package:ecommerce_final_project/services/sub_category_services.dart';
import 'package:flutter/cupertino.dart';

class SubCategoryProvider with ChangeNotifier {
  SubCategoryServices subCategoryServices = SubCategoryServices();
  List<SubCategory> subCategoryData = [];

  Future getAllSubCategory() async {
    print("----------------------");
    subCategoryData = await subCategoryServices.getData();
    notifyListeners();
  }
}
