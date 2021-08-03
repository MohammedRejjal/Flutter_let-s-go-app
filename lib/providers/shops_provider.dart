import 'dart:convert';

import 'package:ecommerce_final_project/models/shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ShopsProvader with ChangeNotifier {
  List<Shop> shops = [];
  bool isloding = false;

  Future<void> getShops(
      double latitude, double longitude, String categoryId) async {
    var res = await http.get(Uri.parse(
        'http://furniture.sketchandscript.com/api/shops/GetShops?latitude=${latitude.toString()}&longitude=${longitude.toString()}&categoryId=$categoryId'));
    var jsonString = jsonDecode(res.body);
    for (var x in jsonString) {
      shops.add(Shop(x));
    }
    notifyListeners();
  }
}
