import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/services/details_services.dart';
import 'package:flutter/cupertino.dart';

class DetailsProvidder with ChangeNotifier {
  DetailsServices detailsServices = DetailsServices();
  List<Detailes> detailesData = [];
   Map<String, dynamic> feedback = {};

  Future getAllDetail() async {
    detailesData = await detailsServices.getData();
    notifyListeners();
  }

  Future setAllDetail(String url) async {
    await detailsServices.setDataSS(url);
    notifyListeners();
  }

  Future addRating({required url, required rating}) async {
    await detailsServices.addRating(url: url, rating: rating);
    notifyListeners();
  }

  Future addFeedback({
    required url,
    required Map<String, dynamic> feedback,
  }) async {
    await detailsServices.addFeedback(url: url, feedback: feedback);

    notifyListeners();
  }

  Future getFeedback(String url) async {
    feedback = await detailsServices.getFeedback(url);
    print( "feedback $feedback");
    notifyListeners();
  }
}
