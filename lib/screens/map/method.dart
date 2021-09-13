import 'package:flutter/cupertino.dart';
import 'package:location/location.dart';



Future<dynamic> livelocation(BuildContext context) async {
    Location location = Location();
    bool _serviceEnabled;
    await location.serviceEnabled().then((value) async => {
          if (!value)
            {
              await location.requestService().then((value) => {
                    if (!value)
                      {
                        location.requestService()
                      }
                  })
            }
        });


        location.hasPermission().then((value) async => {
          if (value == PermissionStatus.denied)
            {
              await location.requestPermission().then((value) async => {
                    if (value != PermissionStatus.granted)
                      {
location.requestPermission()
                       }
                    else
                      {print("_permissionGranted $value")}
                  })
            }
        });

  
  }

