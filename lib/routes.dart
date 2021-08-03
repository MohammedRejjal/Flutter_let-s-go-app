import 'package:ecommerce_final_project/screens/explore/explore_screen.dart';
import 'package:ecommerce_final_project/screens/otp_screen/otp_screen.dart';
import 'package:ecommerce_final_project/screens/shop/shop_screen.dart';
import 'package:ecommerce_final_project/screens/sign_up/sing_up_screen.dart';
import 'package:ecommerce_final_project/screens/subcategory_screen/subcategory_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SingUpScreen.namedRoute: (ctx) => SingUpScreen(),
  OtpScreen.namedRoute: (ctx) => OtpScreen('2'),
  ShopsScreen.namedRoute: (ctx) => ShopsScreen(),
  SubcategoryScreen.namedRoute: (ctx) => SubcategoryScreen(),
  ExploreScreen.namedRoute: (ctx) => ExploreScreen(),
};
