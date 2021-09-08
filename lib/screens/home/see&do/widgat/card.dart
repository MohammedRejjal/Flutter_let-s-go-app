import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:ecommerce_final_project/screens/home/details/details_screen.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class BuildCard extends StatefulWidget {
  const BuildCard(
      {Key? key, this.image, this.textDetails, this.textName, this.index , this.distance})
      : super(key: key);
  final image;
  final index;
  final textName;
  final textDetails;
  final distance;
  @override
  _BuildCardState createState() => _BuildCardState();
}

class _BuildCardState extends State<BuildCard> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
 
    var watcher = context.watch<DetailsProvidder>().detailesData;

    {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) {
            return DetailsScreen(
                watcher.where((element) => element.name == widget.textName));
          }));
          print(watcher.length);
        },
        child: Card(
          margin: EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            height: getScreenHeight() / 2,
            padding: EdgeInsets.all(2),
            width: getScreenWidth() / 5.5,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('${widget.image}'),
                      ),
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${widget.textName}',
                            style: TextStyle(
                                fontSize: getScreenWidth() / 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '''${widget.textDetails}''',
                            style: TextStyle(
                                fontSize: getScreenWidth() / 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              if (favorite == false) {
                                context.read<Userprovider>().addHistoty(
                                    url: context
                                        .read<Userprovider>()
                                        .user!
                                        .userId,
                                    history: {
                                      "${widget.textName}": "${widget.textName}"
                                    });
                              }
                              if (favorite == true) {
                                context.read<Userprovider>().deletehistory(
                                    url: context
                                        .read<Userprovider>()
                                        .user!
                                        .userId,
                                    name: widget.textName);
                              }

                              setState(() {
                                favorite = !favorite;
                              });
                            },
                            icon: Icon(
                              favorite ? Icons.favorite : Icons.favorite_border,
                            )),
                        Spacer(),
 Text(
                            '${widget.distance} Km ',
                            style: TextStyle(
                                fontSize: getScreenWidth() / 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),

                      ],
                    ),
                  ),
                  flex: 2,
                )
              ],
            ),
          ),
        ),
      );
    }
  }
}
