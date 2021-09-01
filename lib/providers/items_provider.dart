import 'dart:convert';

import 'package:ecommerce_final_project/models/items.dart';
 import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ItemsProvader with ChangeNotifier {
  List<Items> items = [];
  bool isloding = false;

  Future<void> getItems(String categoryId) async {
    var res = await http.get(Uri.parse(
        'http://furniture.sketchandscript.com/api/items/GetItemsForShop?shopid=$categoryId'));
    var jsonString = jsonDecode(res.body);
    for (var x in jsonString) {
      items.add(Items(x));
    }
    print(items.length);
    notifyListeners();
  }
}
