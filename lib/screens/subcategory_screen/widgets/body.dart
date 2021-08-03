import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/providers/items_provider.dart';
import 'package:ecommerce_final_project/providers/shops_provider.dart';
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
    var selectedSubCategoryId =
        context.read<GenderalProvader>().selectCategoryId;
    context.read<ItemsProvader>().getItems(selectedSubCategoryId);
  }

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<ItemsProvader>();
    return watcher.isloding
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: watcher.items.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text("${watcher.items[index].name}"),
              );
            });
  }
}
