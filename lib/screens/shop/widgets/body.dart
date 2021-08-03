import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/shops_provider.dart';
import 'package:ecommerce_final_project/screens/subcategory_screen/subcategory_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    var selectedCategoryId = context.read<GenderalProvader>().selectCategoryId;
    context.read<ShopsProvader>().getShops(4234.234, 745.2, selectedCategoryId);
  }

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<ShopsProvader>();
    return watcher.isloding
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: watcher.shops.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text("${watcher.shops[index].name}"),
                onTap: () {
                  context.read<GenderalProvader>().selectCategoryId =
                      context.read<ShopsProvader>().shops[index].id!;
                  Navigator.of(context).pushNamed(SubcategoryScreen.namedRoute);
                  print('yes');
                },
              );
            });
  }
}
