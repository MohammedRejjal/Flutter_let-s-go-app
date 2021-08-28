 import 'package:flutter/material.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile',
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[700]!.withOpacity(0.4),
          elevation: 0,
          // give the app bar rounded corners
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          leading: Icon(
            Icons.menu,
          ),
        ),
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            SizedBox(
              height: 250,
              child: Center(
                child: Text(
                  'Profile Details Goes here',
                ),
              ),
            ),

            // the tab bar with two items
            SizedBox(
              height: 80,
              child: AppBar(flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
                bottom: TabBar(
                     indicatorWeight: 5,
                     
                  tabs: [

                    Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.location_on), text: 'Location'),
                Tab(icon: Icon(Icons.attach_money), text: 'price'),
                    
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                     color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),
                      Container(
                     color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),    Container(
                     color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                  Container(
                     color: Colors.pink,
                    child: Center(
                      child: Text(
                        'Car',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


