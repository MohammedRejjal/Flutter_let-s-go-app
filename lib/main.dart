import 'package:ecommerce_final_project/L10n/I10n.dart';
import 'package:ecommerce_final_project/providers/category_provider.dart';
import 'package:ecommerce_final_project/providers/destinations_provider.dart';
import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/providers/slider_images_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/routes.dart';
import 'package:ecommerce_final_project/screens/admin/admin_screen.dart';
import 'package:ecommerce_final_project/screens/home/categories_card.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/splash_screen/Splashscreen.dart';
import 'package:ecommerce_final_project/screens/widgets/bottom_bar.dart';
import 'package:ecommerce_final_project/services/sub_category_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_final_project/services/main_category_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
  
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => SubCategoryProvider()),
        ChangeNotifierProvider(create: (ctx) => DestinationsProvider()),
        ChangeNotifierProvider(create: (ctx) => CategoriesProvider()),
        Provider(create: (ctx) => GenderalProvader()),
        ChangeNotifierProvider(create: (ctx) => MainCategoryProvider()),
        ChangeNotifierProvider(create: (ctx) => SliderImageProvider()),
      ],
      child: MaterialApp(
        supportedLocales: L10n.all,
        routes: routes,
        debugShowCheckedModeBanner: false,
        title: 'Lest Go',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottonBar(),
      ),
    );
  }
}
