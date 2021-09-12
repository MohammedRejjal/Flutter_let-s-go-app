import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/screens/map/widgets/distance.dart';
import 'package:ecommerce_final_project/screens/map/widgets/getMyLocation.dart';
import 'package:ecommerce_final_project/screens/map/widgets/googlemap.dart';
import 'package:ecommerce_final_project/screens/map/widgets/setMarker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as a;

class MapScreen extends StatefulWidget {
  const MapScreen(this.watcher, {Key? key}) : super(key: key);

  final Iterable<Detailes> watcher;

  @override
  State<MapScreen> createState() => MapSampleState();
}

Location location = Location();
List<LatLng> polylineCoordinates = [];

late LatLng locationNow;
late LocationData _myLocation;
late var latitude;
late var longitude;

class MapSampleState extends State<MapScreen> {
  @override
  void initState() {
    polylineCoordinates.add(
        LatLng(widget.watcher.first.latitude, widget.watcher.first.longitude));

    super.initState();
  }

  @override
  build(BuildContext context) {
    print('in build');
    setMarker(LocationData.fromMap({
      'latitude': widget.watcher.first.latitude,
      'longitude': widget.watcher.first.longitude,
    }));
    return new Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GoogleMap(
            markers: markers,
            initialCameraPosition: CameraPosition(
                target: LatLng(widget.watcher.first.latitude,
                    widget.watcher.first.longitude),
                zoom: 14.0),
            mapType: MapType.normal,
            onMapCreated: (controller) async {
              if (!controller1.isCompleted) controller1.complete(controller);
            },
            onCameraMove: (e) => currentLocation = e.target,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(mainAxisAlignment: MainAxisAlignment. spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                FloatingActionButton.extended(label:  Text("Get daraction"),
                icon: Icon(Icons.gps_fixed),    
                  onPressed: () {
                    gotomap(widget.watcher.first.latitude,
                        widget.watcher.first.longitude);
                  }, 
                
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

getlocation() async {
  _myLocation = await location.getLocation();
  return [_myLocation.altitude, _myLocation.longitude];
}
