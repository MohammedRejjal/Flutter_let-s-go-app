import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/home/see&do/widgat/card.dart';
import 'package:ecommerce_final_project/screens/map/widgets/distance.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SubSubCategories extends StatefulWidget {
  const SubSubCategories({Key? key, required this.name}) : super(key: key);
  final String name;
  static const namedRoute = '/SubSubCategories';

  @override
  _SubSubCategoriesState createState() => _SubSubCategoriesState();
}

class _SubSubCategoriesState extends State<SubSubCategories> {
  @override
  Widget build(BuildContext context) {
    //final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    var watcher = context.watch<DetailsProvidder>().detailesData;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Container(
          child: GridView.builder(
              itemCount:
                  watcher.where((element) => element.id == widget.name).length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  childAspectRatio: .76),
              itemBuilder: (context, index) {
                return BuildCard(
                  index: index,
                  image: watcher
                      .where((element) => element.id == widget.name)
                      .elementAt(index)
                      .mainImagUrl,
                  textName: watcher
                      .where((element) => element.id == widget.name)
                      .elementAt(index)
                      .name,
                  textDetails: watcher
                      .where((element) => element.id == widget.name)
                      .elementAt(index)
                      .infoDetails,
                  distance: distance(
                      context,
                      context
                          .read<DetailsProvidder>()
                          .detailesData[index]
                          .latitude,
                      context
                          .read<DetailsProvidder>()
                          .detailesData[index]
                          .longitude,
                      myloclc["latitude"]!,
                      myloclc["longitude"]!),
                );

                // return
                //       BuildCard(
                //           image: watcher
                //               .where((element) => element.id == widget.name)
                //               .first
                //               .mainImagUrl,
                //           textName: watcher
                //               .where((element) => element.id == widget.name)
                //               .first
                //               .name,
                //           textDetails: watcher
                //               .where((element) => element.id == widget.name)
                //               .elementAt(index)
                //               .infoDetails);
              })),
    );
  }
}
