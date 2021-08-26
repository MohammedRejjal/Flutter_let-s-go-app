import 'package:ecommerce_final_project/providers/details_providder.dart';
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
    var icon = Icon(Icons.favorite);
    return Container(
      height: getScreenHeight() / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(
              context.read<DetailsProvidder>().Detailes_data[index].mainImagUrl,
              context.read<DetailsProvidder>().Detailes_data[index].location,
              context
                  .read<DetailsProvidder>()
                  .Detailes_data[index]
                  .infoDetails);
        },
      ),
    );
  }
}
