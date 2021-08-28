import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/map/map.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(this.watcher, {Key? key}) : super(key: key);
  final Iterable<Detailes> watcher;
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

var pageIndex = 0;

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void dispose() {
    pageIndex = 0;
    super.dispose();
  }
 

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();

    var listOfDot = [];
    var listofimage = widget.watcher.first.imagesUrl;
    void getDot() {
      for (var x = 0; x < widget.watcher.first.imagesUrl.length; x++) {
        listOfDot.add(Dot(x: pageIndex == x));
      }
    }

    getDot();
    SizeConfig(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar( title: Text("${widget.watcher.first.location}"), ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: getScreenHeight() / 3,
                  child: CarouselSlider(
                     
                    options: CarouselOptions(viewportFraction: .9,
                      onPageChanged: (index, reason) {
                        setState(() {
                          pageIndex = index;
                        });
                      },
    
                       enlargeCenterPage: true,
                      enableInfiniteScroll: false,
    
                      autoPlay: true,
                    ),
                    items: listofimage.map((e) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(
                              e,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                 
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: getScreenHeight() / 3.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [...listOfDot],
                    ),
                  ],
                ),
              ],
            ),
SizedBox(
              height: 80,
              child: AppBar(
                
                flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
                bottom: TabBar(isScrollable: false,
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
                      SingleChildScrollView(
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
                                          '${widget.watcher.first.location}',
                                          style: TextStyle(fontSize: getScreenWidth() / 40),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        )
                                      ],
                                    ),
                                  ), Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(color: Colors.white70,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${widget.watcher.first.infoDetails}',
                                          style: TextStyle(fontSize: getScreenWidth() / 50),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
           
                       Container(
                     color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),  MapScreen(widget. watcher),    Container(
                     color: Colors.red,
                    child: Center(
                      child: Text(
                        'Bike',
                      ),
                    ),
                  ),

                  // second tab bar viiew widget
                 
                ],
              ),
            ),     
          ],
        ),
      ),
    );
  }
}
