import 'dart:convert';


import 'package:ecommerce_final_project/models/main_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CategoriesProvider with ChangeNotifier {
  List<MainCategory> categories = [];
  bool isLoading = true;
  Future<void> getCategories() async {
    var res = await http.get(Uri.parse(
        'https://lets--go-app-default-rtdb.firebaseio.com/category'));
    var data = jsonDecode(res.body);
    for (var i in data) {
      categories.add(MainCategory.fromJson(i));
    }
    isLoading = false;
    notifyListeners();
  }
}
