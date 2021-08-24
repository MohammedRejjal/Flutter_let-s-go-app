import 'package:ecommerce_final_project/models/sub_category.dart';
import 'package:ecommerce_final_project/providers/details_provider.dart';
import 'package:ecommerce_final_project/screens/home/sub_categories_screen.dart';
import 'package:ecommerce_final_project/services/sub_category_services.dart';
import 'package:flutter/cupertino.dart';

class SubCategoryProvider with ChangeNotifier {
  SubCategoryServices subCategoryServices = SubCategoryServices();
  List<SubCategory> subCategory_data = [];

  Future getAllShop() async {
    subCategory_data = await subCategoryServices.getData();
     notifyListeners();
  }
}
