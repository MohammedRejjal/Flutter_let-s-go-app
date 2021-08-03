import 'dart:convert';

import 'package:ecommerce_final_project/models/category.dart' as cat;
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class CategoriesProvider with ChangeNotifier {
  List<cat.Category> categories = [];
  bool isLoading = true;
  Future<void> getCategories() async {
    var res = await http.get(Uri.parse(
        'http://furniture.sketchandscript.com/api/shops/GetCategories'));
    var data = jsonDecode(res.body);
    for (var i in data) {
      categories.add(cat.Category.fromJson(i));
    }
    isLoading = false;
    notifyListeners();
  }
}
