  import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math' show cos, sqrt, asin;

class calcDistanceService {
 
  
  void calcDistance(List<LatLng> polylineCoordinates1) {
    double totalDistance = 0.0;

    // Calculating the total distance by adding the distance
    // between small segments
    for (int i = 0; i < polylineCoordinates1.length - 1; i++) {
      totalDistance += _coordinateDistance(
        polylineCoordinates1[i].latitude,
        polylineCoordinates1[i].longitude,
        polylineCoordinates1[i + 1].latitude,
        polylineCoordinates1[i + 1].longitude,
      );
    }

    print("distance = ${totalDistance.toStringAsFixed(2)} km");
  }

  double _coordinateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }
}
