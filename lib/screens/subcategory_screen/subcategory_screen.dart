import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/items_provider.dart';
import 'package:ecommerce_final_project/screens/subcategory_screen/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({Key? key}) : super(key: key);
  static const namedRoute = '/ItemScreen';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ItemsProvader(),
      child: Scaffold(
        appBar: AppBar(),
        body: Body(),
      ),
    );
  }
}
