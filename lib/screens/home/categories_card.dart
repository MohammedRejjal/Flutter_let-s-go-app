import 'package:ecommerce_final_project/constants.dart';
import 'package:ecommerce_final_project/screens/home/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Container(
        height: getScreenHeight() / 2,
        child: GridView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              return CategoryTile(category: '$index');
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
