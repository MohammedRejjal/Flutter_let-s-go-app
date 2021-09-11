import 'dart:async';

import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/loginScreen.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/onbording/onboarding_screen.dart';
import 'package:ecommerce_final_project/screens/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     super.initState();
    Timer(Duration(seconds: 2), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var user = prefs.getString("userid");
      var email = prefs.getString("Email");
      var pass = prefs.getString("Pass");

      var start = prefs.getBool("Start");
      if (email == null && pass == null) {
        start == true
            ? Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => LoginScreen()))
            : Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => OnBoardingScreen()));
      } else {
        Navigator.of(context).pushNamed(BottonBar.namedRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/logo.png',
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
