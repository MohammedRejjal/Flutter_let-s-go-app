import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/screens/home/see&do/widgat/card.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LatestExpereans extends StatefulWidget {
  final int count;
  const LatestExpereans({Key? key, required this.count, required})
      : super(key: key);

  @override
  _LatestExpereansState createState() => _LatestExpereansState();
}

class _LatestExpereansState extends State<LatestExpereans> {
  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<DetailsProvidder>().detailesData;

    var icon = Icon(Icons.favorite);
    return Container(
      height: getScreenHeight() / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: BuildCard(
              context.read<DetailsProvidder>().detailesData[index].mainImagUrl,
              context.read<DetailsProvidder>().detailesData[index].name,
              context.read<DetailsProvidder>().detailesData[index].infoDetails,
              context,
            ),
             onTap:( ) {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) {
            return DetailsScreen(watcher.where((element) => element.name == watcher.elementAt(index).name) );
          }));
          print(watcher.length);
        },
    );
           
        },
      ),
    );
  }
}
