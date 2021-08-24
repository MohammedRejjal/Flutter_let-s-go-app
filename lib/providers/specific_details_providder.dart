import 'package:ecommerce_final_project/models/specific_details.dart';
import 'package:ecommerce_final_project/services/specific_details_services.dart';
import 'package:flutter/cupertino.dart';

class specific_details_providder with ChangeNotifier {
  SpecificDetailsServices specificDetailsServices = SpecificDetailsServices();
  List<SpecificDetailes> specificDetailes_data = [];

  Future getAllShop() async {
    specificDetailes_data = await specificDetailsServices.getData();
    notifyListeners();
  }
}
