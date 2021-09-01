import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/screens/home/see&do/latest%20experiences.dart';
import 'package:ecommerce_final_project/screens/home/subCategories/sub_categories_tiles.dart';
import 'package:ecommerce_final_project/screens/onbording/onboarding_screen.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubCategoriesScreen extends StatefulWidget {
  const SubCategoriesScreen();

  static const namedRoute = '/SubCategoriesScreen';

  @override
  _SubCategoriesScreenState createState() => _SubCategoriesScreenState();
}

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;

    if (arguments != null) print(arguments);

    var watcher = context.watch<SubCategoryProvider>();
    var x = watcher.subCategoryData
        .where((element) => element.id == arguments['name'])
        .toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(arguments['name']),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arguments['name'] + ' category',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: getScreenHeight() / 3,
                child: GridView.builder(
                    itemCount: watcher.subCategoryData
                        .where((element) => element.id == arguments['name'])
                        .length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          watcher.subCategoryData.length > 6 ? 3 : 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return SunCategoriesTiles(
                        name: x[index].name,
                        id: arguments['name'],
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'All' + ' ${arguments['name']}',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    LatestExpereans(count:
                     context.read<DetailsProvidder>().detailesData.where((element) =>
                            element.category ==  arguments['name']).length)
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
