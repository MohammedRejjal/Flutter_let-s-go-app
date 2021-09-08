import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/home/see&do/widgat/card.dart';
import 'package:ecommerce_final_project/screens/map/widgets/distance.dart';
 import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';

class LatestExpereans extends StatefulWidget {
  final String genaratic;
  final bool axis;
  final int count;
  const LatestExpereans(
      {Key? key,
      required this.genaratic,
      required this.count,
      required this.axis})
      : super(key: key);

  @override
  _LatestExpereansState createState() => _LatestExpereansState();
}

late LocationData myLocation;
Location location = Location();
 
class _LatestExpereansState extends State<LatestExpereans> {
  @override
  Widget build(BuildContext context) { 
           
             

    var watcher = context.watch<DetailsProvidder>().detailesData;
    return Container(
      height: getScreenHeight() / 3,
      child: ListView.builder (
        scrollDirection: widget.axis ? Axis.horizontal : Axis.vertical,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index)  {
         

           return  widget.genaratic == ''
              ? BuildCard(
                  index: index,
                  image: context
                      .read<DetailsProvidder>()
                      .detailesData[index]
                      .mainImagUrl,
                  textName:
                      context.read<DetailsProvidder>().detailesData[index].name,
                  textDetails: context
                      .read<DetailsProvidder>()
                      .detailesData[index]
                      .infoDetails,
                     distance: distance(
                  context,
                   context.read<DetailsProvidder>().detailesData[index].latitude,
                   context.read<DetailsProvidder>().detailesData[index].longitude,
                  myloclc["latitude"]!,
                myloclc["longitude"]!),

                )
              : BuildCard(
                  index: index,
                  image: watcher
                      .where((element) => element.location == widget.genaratic)
                      .elementAt(index)
                      .mainImagUrl,
                  textName: watcher
                      .where((element) => element.location == widget.genaratic)
                      .elementAt(index)
                      .name,
                  textDetails: watcher
                      .where((element) => element.location == widget.genaratic)
                      .elementAt(index)
                      .infoDetails,
                  distance: distance(
                  context,
                   context.read<DetailsProvidder>().detailesData[index].latitude,
                   context.read<DetailsProvidder>().detailesData[index].longitude,
                  myloclc["latitude"]!,
                myloclc["longitude"]!),
                );
        },
      ),
    );
  }
}

