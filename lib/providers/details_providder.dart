import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/services/details_services.dart';
import 'package:flutter/cupertino.dart';

class DetailsProvidder with ChangeNotifier {
  DetailsServices detailsServices = DetailsServices();
  List<Detailes> Detailes_data = [];

  Future getAllDetail() async {
    Detailes_data = await detailsServices.getData();
    notifyListeners();
  }

  Future setAllDetail() async {
    await detailsServices.setDataSS();
    notifyListeners();
  }
}
