import 'package:ecommerce_final_project/screens/home/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 320,
        height: 210,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryTile(category: 'as'),
                CategoryTile(category: 'as'),
                CategoryTile(category: 'as'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryTile(category:'as'),
                CategoryTile(category:'as'),
                CategoryTile(category:'as'),
                CategoryTile(category:'as'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
