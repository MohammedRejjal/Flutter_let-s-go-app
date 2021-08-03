import 'package:ecommerce_final_project/L10n/I10n.dart';
import 'package:ecommerce_final_project/providers/category_provider.dart';
import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/routes.dart';
import 'package:ecommerce_final_project/screens/explore/explore_screen.dart';
import 'package:ecommerce_final_project/screens/splash_screen/Splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//jlsfksxzdfjks
//sadasd
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => CategoriesProvider()),
        Provider(create: (ctx) => GenderalProvader()),
      ],
      child: MaterialApp(
        supportedLocales: L10n.all,
        routes: routes,
        debugShowCheckedModeBanner: false,
        title: 'Lest Go',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
