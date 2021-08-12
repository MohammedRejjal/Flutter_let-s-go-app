import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
class BottonBar extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<BottonBar> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(
            child: _getPage(currentPage),
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.favorite,
            title: "favorite",
          ),
          TabData(
            iconData: Icons.notifications_on,
            title: "notifications",
          ),
          TabData(
            iconData: Icons.bookmark_add,
            title: "booking",
          ),
        ],
        activeIconColor: Color.fromRGBO(207, 181, 59, 1),
        barBackgroundColor: Color(0xff123456),
        circleColor: Colors.white,
        inactiveIconColor: Colors.white,
        textColor: Color.fromRGBO(207, 181, 59, 1),
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  //if you want go to other botton bar
  // final FancyBottomNavigationState fState = bottomNavigationKey
  //     .currentState as FancyBottomNavigationState;
  // fState.setPage(2);
  _getPage(int page) {
    switch (page) {
      case 0:
        return HomeScreen ();
      case 1:
        return Container(
          color: Colors.blue,
        );
      case 2:
        return HomeScreen();
      default:
        return HomeScreen();
    }
  }
}
