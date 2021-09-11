import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/screens/feedback/feedback_screen.dart';
import 'package:ecommerce_final_project/screens/home/details/appBar/home_bar.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/home/price/price_screen.dart';
import 'package:ecommerce_final_project/screens/map/map.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/screens/subcategory_screen/subcategory_screen.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  void initState() {
    // context.read<DetailsProvidder>().getFeedback('${widget.watcher.first.name}/feedback.json');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    context
        .read<DetailsProvidder>()
        .getFeedback('${widget.watcher.first.name}/feedback.json');
    var listOfDot = [];
    var listofimage = widget.watcher.first.imagesUrl;
    void getDot() {
      for (var x = 0; x < widget.watcher.first.imagesUrl.length; x++) {
        listOfDot.add(Dot(x: pageIndex == x));
      }
    }

    getDot();
    SizeConfig(context);
    return SafeArea(
      child: DefaultTabController( 
      
          length: 4,
          child: Scaffold(
            
             body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                SliverAppBar(
                        expandedHeight: 350.0,
                        pinned: true,
                        floating: true,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Container(
                            color: Colors.white,
                            child: SafeArea(
                              child: Column(
                                children: [
                                  AppBar( title: Text("${widget.watcher.first.name}"), ),
                                  Stack(
                                    children: [
                                      Container(
                                        height: getScreenHeight() / 3,
                                        child: CarouselSlider(
                                          options: CarouselOptions(
                                            viewportFraction: .9,
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
                                ],
                              ),
                            ),
                          ),
                        )),
               
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        unselectedLabelColor: Colors.grey,
                        indicator: ShapeDecoration(
                          shape: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 4.0,
                                  style: BorderStyle.solid)),
                          gradient: LinearGradient(
                            colors: [Colors.lightBlue, Colors.black87],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                          ),
                        ),
                        isScrollable: false,
                        indicatorWeight: 5,
                        tabs: [
                          Tab(icon: Icon(Icons.home), text: 'Home'),
                          Tab(icon: Icon(Icons.star), text: 'Feed'),
                          Tab(icon: Icon(Icons.location_on), text: 'Location'),
                          Tab(icon: Icon(Icons.attach_money), text: 'price'),
                        ],
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: Column(
                children: [
                  Expanded(
                    child: TabBarView(
                      children: [
                        // first tab bar view widget
                        HomeBar(
                          watcher: widget.watcher,
                        ),
    
                        FeedBackScreen(watcher: widget.watcher),
                        MapScreen(widget.watcher),
                       PriceScreen(watcher: widget.watcher)
    
                        // second tab bar viiew widget
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: Colors.blueGrey[50],
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
