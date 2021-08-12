import 'dart:async';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

var pageIndex = 0;
PageController _pageController = PageController(initialPage: 0);
List imageList = [
  'assets/al batra.jpg',
  'assets/farm.jpg',
  'assets/Enjoyment1.jpg',
  'assets/sport.jpg'
];

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
              height: MediaQuery.of(context).size.height / 2.5,
            ),

            Column(
              children: [
                SizedBox(
                  height: 85,
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
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(
                              e,
                              width: 1050,
                              height: 350,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Dot(x: pageIndex == 0),
                      Dot(x: pageIndex == 1),   
                      Dot(x: pageIndex == 2),
                      Dot(
                        x: pageIndex == 3,
                      ),
                    ],
                  ),
          Row(
            children: [
              Text('data'),
            ],
          )     ],
              ),
            )
           
          ],
        ),
      ),
    );
  }
}
