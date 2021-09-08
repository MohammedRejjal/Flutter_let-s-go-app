import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:haversine_distance/haversine_distance.dart' as hLocation;

String distance(BuildContext context, double st_latitude, double st_longitude ,double ed_latitude , double ed_longitude) {
 
  hLocation.Location end = hLocation.Location(
      ed_latitude  , ed_longitude  );
  hLocation.Location start = hLocation.Location(st_latitude, st_longitude);
  print("start  latitude ${start.latitude}      longitude ${start.longitude}");
  print("end  latitude ${end.latitude}          longitude ${end.longitude}");
  String distance = hLocation.HaversineDistance()
      .haversine(start, end, hLocation.Unit.KM)
      .toStringAsFixed(1);
  print(" reader.distance ${distance}");
  return distance;
}
