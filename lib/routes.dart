import 'package:ecommerce_final_project/screens/Application%20introduction/SignUp.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/loginScreen.dart';
import 'package:ecommerce_final_project/screens/explore/explore_screen.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
 import 'package:ecommerce_final_project/screens/home/subCategories/sub_categories_screen.dart';
import 'package:ecommerce_final_project/screens/otp_screen/otp_screen.dart';
import 'package:ecommerce_final_project/screens/shop/shop_screen.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/validationNumberScreen.dart';
import 'package:ecommerce_final_project/screens/subcategory_screen/subcategory_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = { 
    HomeScreen.namedRoute: (ctx) => HomeScreen(),
          SignUpScreen.namedRoute: (ctx) => SignUpScreen(),


   validationNumberScreen.namedRoute: (ctx) => validationNumberScreen(),
  OtpScreen.namedRoute: (ctx) => OtpScreen('2'),
  ShopsScreen.namedRoute: (ctx) => ShopsScreen(),
  SubcategoryScreen.namedRoute: (ctx) => SubcategoryScreen(),
  ExploreScreen.namedRoute: (ctx) => ExploreScreen(),
  LoginScreen.namedRoute : (ctx) =>  LoginScreen(),
  SubCategoriesScreen.namedRoute:(ctx)=> SubCategoriesScreen( ),
 
};
