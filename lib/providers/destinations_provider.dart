import 'package:ecommerce_final_project/models/destinations/destinations.dart';
import 'package:ecommerce_final_project/services/destinations_services.dart';
import 'package:flutter/cupertino.dart';

class DestinationsProvider with ChangeNotifier {
  DestinationsServices destinationsServices = DestinationsServices();
  List<Destinations> destinationsData = [];
  bool isloding = true;

  Future getAllDestination() async {
    isloding = true;
    destinationsData = await destinationsServices.getData();
    isloding = false;
    print("getAllDestination$isloding");
    notifyListeners();
  }

  Future setAllDestination() async {
    await destinationsServices.setDataSS();
    notifyListeners();
  }
}
