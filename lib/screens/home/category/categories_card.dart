 import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/screens/home/category/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../size_config.dart';

class CategoriesCard extends StatefulWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  _CategoriesCardState createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  void initState() {
     
     
    context.read<SubCategoryProvider>().getAllSubCategory();
    context.read<MainCategoryProvider>().getAllCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<MainCategoryProvider>();
    SizeConfig(context);
    return  Container(
        height: getScreenHeight() / 2.5,
        child: GridView.builder(
            itemCount: watcher.categoryData.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              return CategoryTile(
                category: index,
              );
            }));
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     CategoryTile(category: 'as'),
    //     CategoryTile(category: 'as'),
    //   ],
    // ),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     CategoryTile(category: 'as'),
    //     CategoryTile(category: 'as'),
    //     CategoryTile(category: 'as'),
    //   ],
    // ),
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     CategoryTile(category: 'as'),
    //     CategoryTile(category: 'as'),
    //   ],
    // ),
  }
}
