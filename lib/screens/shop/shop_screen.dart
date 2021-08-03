import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/shops_provider.dart';
import 'package:ecommerce_final_project/screens/shop/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key? key}) : super(key: key);
  static const namedRoute = '/ShopsScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ShopsProvader(),
      child: Scaffold(
        appBar: AppBar(),
        body: Body(),
      ),
    );
  }
}
