import 'package:ecommerce_final_project/models/destinations.dart';
import 'package:ecommerce_final_project/services/destinations_services.dart';
import 'package:flutter/cupertino.dart';

class DestinationsProvider with ChangeNotifier {
  DestinationsServices destinationsServices = DestinationsServices();
    List<Destinations> destinations_data = [];

  Future getAllDestination() async {
    destinations_data = await destinationsServices.getData();
     notifyListeners();

  }

  Future setAllDestination() async {
    await destinationsServices.setDataSS();
    notifyListeners();
  }
}
