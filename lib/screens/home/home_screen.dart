import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/providers/auth_provider.dart';
import 'package:ecommerce_final_project/providers/destinations_provider.dart';
import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/slider_images_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:ecommerce_final_project/screens/home/category/categories_card.dart';
import 'package:ecommerce_final_project/screens/home/destinations/destinations.dart';
import 'package:ecommerce_final_project/screens/home/see&do/latest%20experiences.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const namedRoute = '/HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var pageIndex = 0;
PageController _pageController = PageController(initialPage: 0);

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  void initState() {
    context.read<DestinationsProvider>().getAllDestination();
    context.read<DetailsProvidder>().getAllDetail();
    context
        .read<Userprovider>()
        .getUser(context.read<Userprovider>().user!.userId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
    List imageList = context.read<SliderImageProvider>().imageList;

    var listOfDot = [];
    void getDot() {
      for (var x = 0; x < imageList.length; x++) {
        listOfDot.add(Dot(x: pageIndex == x));
      }
    }

    getDot();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        image: new DecorationImage(
                          image: new AssetImage('assets/bluegreen.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                    ),

                    Column(
                      children: [
                        SizedBox(
                          height: 85,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  '''Do you want to take a trip and
      want to change your mood?''',
                                  style: TextStyle(
                                      fontSize: getScreenWidth() / 35,
                                      color: Colors.amber[100]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CarouselSlider(
                          carouselController: buttonCarouselController,
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                pageIndex = index;
                              });
                            },
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            autoPlay: true,
                          ),
                          items: imageList.map((e) {
                            return GestureDetector(
                              onTap: () async {
                                print('userUrlccccccccc =' +
                                    "${context.read<Userprovider>().userData!.name}");

                                    context.read<Userprovider>().addHistoty(url: context.read<Userprovider>().user!.userId, history:{"2":"asda"});
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.asset(
                                      e,
                                      fit: BoxFit.cover,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [...listOfDot],
                        ),
                        Divider(
                          color: Colors.black54,
                        ),
                        Center(
                            child: Text(
                          'Main Categories',
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        )),
                        CategoriesCard(),
                        Divider(
                          color: Colors.black54,
                        ),
                        Center(
                            child: Text(
                          'See & Do',
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        )),
                        LatestExpereans(axis: true,
                            count: context
                                .read<DetailsProvidder>()
                                .detailesData
                                .length),
                        Divider(
                          color: Colors.black54,
                        ),
                        Center(
                            child: Text(
                          'Destinations',
                          style: TextStyle(fontSize: 18, color: Colors.black45),
                        )),
                        Destinations(),
                        Divider(
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),

                    // PageView.builder(
                    //   onPageChanged: (int y) {
                    //     setState(() {
                    //       pageIndex = y;
                    //     });
                    //   },
                    //   controller: _pageController,
                    //   itemCount: content.length,
                    //   itemBuilder: (context, index) {
                    //     return Container(
                    //       height: MediaQuery.of(context).size.height,
                    //       width: MediaQuery.of(context).size.width,
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           SizedBox(
                    //             height: 100,
                    //           ),
                    //           Container(
                    //             child: Column(
                    //               children: [
                    //                 ClipRRect(
                    //                   borderRadius: BorderRadius.circular(15.0),
                    //                   child: Image.asset(
                    //                     "${content[pageIndex]}",
                    //                     fit: BoxFit.fill,
                    //                     height:
                    //                         MediaQuery.of(context).size.height / (3),
                    //                     width: double.infinity,
                    //                   ),
                    //                 )
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
