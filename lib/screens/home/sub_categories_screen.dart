import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/screens/home/latest%20experiences.dart';
import 'package:ecommerce_final_project/screens/home/sub_categories_tiles.dart';
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
    var x= watcher.subCategory_data.where((element) => element.id==arguments['name']).toList();


    return MaterialApp(
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
                    itemCount: watcher.subCategory_data.where((element) => element.id==arguments['name']).length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          watcher.subCategory_data.length > 6 ? 3 : 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return SunCategoriesTiles(name:  x[index].name ,
                        id: arguments['name'],
                        
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'All' + ' ${watcher.subCategory_data[0].name}',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    LatestExpereans(count: 4)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
