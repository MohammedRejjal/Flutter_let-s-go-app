import 'package:ecommerce_final_project/screens/home/details/appBar/booking/booking_screen.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';

class BookingBar extends StatelessWidget {
  final watcher;

  const BookingBar({Key? key, required this.watcher}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DefaultBottomBarController(
        child: ExamplePage(watcher: watcher),
      ),
    );
  }
}

class ExamplePage extends StatelessWidget {
  final watcher;

  const ExamplePage({Key? key,required this.watcher}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // Set [extendBody] to true for bottom app bar overlap body content
      extendBody: true,

      //
      // Lets use docked FAB for handling state of sheet
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        //
        // Set onVerticalDrag event to drag handlers of controller for swipe effect
        onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        child: FloatingActionButton.extended(
          label: AnimatedBuilder(
            animation: DefaultBottomBarController.of(context).state,
            builder: (context, child) => Row(
              children: [
                Text(
                  DefaultBottomBarController.of(context).isOpen
                      ? "Fun"
                      : "Booking",
                ),
                const SizedBox(width: 4.0),
                AnimatedBuilder(
                  animation: DefaultBottomBarController.of(context).state,
                  builder: (context, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.diagonal3Values(
                      1,
                      DefaultBottomBarController.of(context).state.value * 2 -
                          1,
                      1,
                    ),
                    child: child,
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.chevron_right,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevation: 2,
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,

          //
          //Set onPressed event to swap state of bottom bar
          onPressed: () => DefaultBottomBarController.of(context).swap(),
        ),
      ),
      //
      // Actual expandable bottom bar
      bottomNavigationBar: BottomExpandableAppBar(
        appBarHeight: 0,
        bottomAppBarColor: Colors.white,
        expandedBackColor: Colors.white,
        expandedBody: BookingScreen()
      ),
      body: SafeArea(child: DetailsScreen(watcher)),
    );
  }
}
