import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/services/details_services.dart';
import 'package:flutter/cupertino.dart';

class DetailsProvidder with ChangeNotifier {
  DetailsServices detailsServices = DetailsServices();
  List<Detailes> detailesData = [];

  Future getAllDetail() async {
    detailesData = await detailsServices.getData();
    notifyListeners();
  }

  Future setAllDetail() async {
    await detailsServices.setDataSS();
    notifyListeners();
  }
}
