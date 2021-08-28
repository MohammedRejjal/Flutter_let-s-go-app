import 'dart:async';
import 'package:ecommerce_final_project/services/location_services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
  Completer<GoogleMapController>  controller1 = Completer();

var y;
Future<LatLng> getMyLocation() async {
  LocationData _myLocation = await LocationService().getLocation();
  y = false;
  final GoogleMapController controller = await controller1.future;
  controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(_myLocation.latitude!, _myLocation.longitude!),
      zoom: 16.151926040649414)));
  y = true;
  return LatLng(_myLocation.latitude!, _myLocation.longitude!);
}
