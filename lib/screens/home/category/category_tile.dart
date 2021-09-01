import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/screens/home/subCategories/sub_categories_screen.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);
  final int category;

  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<MainCategoryProvider>();

    SizeConfig(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SubCategoriesScreen.namedRoute,
            arguments: {'name': watcher.categoryData[category].name});
       },
      child: Stack(children: [
        Container(
          height: getScreenHeight() / 5,
          width: getScreenWidth() / 3.9,
          margin: EdgeInsets.all(10),
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: new DecorationImage(
              image: new NetworkImage(
                  "${watcher.categoryData[category].imageUrl}"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              color: Colors.black38,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                "${watcher.categoryData[category].name}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: getScreenHeight() / 80,
            )
          ],
        )
      ]),
    );
  }
}
