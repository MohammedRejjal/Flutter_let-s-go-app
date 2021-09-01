import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/screens/home/see&do/widgat/card.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LatestExpereans extends StatefulWidget {
  final bool axis;
  final int count;
  const LatestExpereans({Key? key, required this.count, required this.axis})
      : super(key: key);

  @override
  _LatestExpereansState createState() => _LatestExpereansState();
}

class _LatestExpereansState extends State<LatestExpereans> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: getScreenHeight() / 3,
      child: ListView.builder(
        scrollDirection:widget.axis? Axis.horizontal:Axis.vertical,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return BuildCard(index: index,image: 
            context.read<DetailsProvidder>().detailesData[index].mainImagUrl,
          textName:   context.read<DetailsProvidder>().detailesData[index].name,
          textDetails:     context.read<DetailsProvidder>().detailesData[index].infoDetails,
           );
        },
      ),
    );
  }
}
