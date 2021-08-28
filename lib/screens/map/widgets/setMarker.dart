import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

final CameraPosition _initialCameraPosition = CameraPosition(
  target: LatLng(31.9746477726364, 35.84051829234395),
  zoom: 14.4746,
);
LatLng currentLocation = _initialCameraPosition.target;
Set<Marker> markers = {};

   setMarker(LocationData _location) {
  Marker newMarker = Marker(
    markerId: MarkerId(_location.toString()),
    icon: BitmapDescriptor.defaultMarker,
    // icon: _locationIcon,
    position: LatLng(_location.latitude!,_location.longitude!),
    infoWindow: InfoWindow(
        title: "Title",
        snippet: "${currentLocation.latitude}, ${currentLocation.longitude}"),
  );
  markers.add(newMarker);

  return markers;
}
