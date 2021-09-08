import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({Key? key, this.watcher}) : super(key: key);
  final Iterable<Detailes>? watcher;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 2, top: 10),
            child: Row(
              children: [
                Text(
                  'details',
                  style: TextStyle(
                      fontSize: getScreenWidth() / 40,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.location_on),
                Text(
                  '${watcher!.first.location}',
                  style: TextStyle(fontSize: getScreenWidth() / 40),
                ),
                SizedBox(
                  width: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${watcher!.first.infoDetails}',
                  style: TextStyle(fontSize: getScreenWidth() / 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
