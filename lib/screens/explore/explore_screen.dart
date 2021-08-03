import 'package:ecommerce_final_project/providers/category_provider.dart';
import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/screens/shop/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);
  static const namedRoute = '/ExploreScreen';

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    context.read<CategoriesProvider>().getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<CategoriesProvider>();
    return Scaffold(
      body: watcher.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: watcher.categories.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  onTap: () {
                    context.read<GenderalProvader>().selectCategoryId = context
                        .read<CategoriesProvider>()
                        .categories[index]
                        .id!;
                    Navigator.of(context).pushNamed(ShopsScreen.namedRoute);
                  },
                  title: Text("${watcher.categories[index].name}"),
                );
              }),
    );
  }
}
