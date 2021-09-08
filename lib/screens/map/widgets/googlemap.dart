import 'package:flutter/cupertino.dart';
import 'package:map_launcher/map_launcher.dart';

Widget? gotomap(var let, var long) {
  MapLauncher.showDirections(
      mapType: MapType.google, destination: Coords(let, long));
}
