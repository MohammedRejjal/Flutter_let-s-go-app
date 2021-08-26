import 'package:ecommerce_final_project/providers/destinations_provider.dart';
import 'package:ecommerce_final_project/providers/general_provider.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Destinations extends StatefulWidget {
  Destinations({
    Key? key,
  }) : super(key: key);

  @override
  _DestinationsState createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  void initState() {
    // var read = context.read<GenderalProvader>();
    // read.itemsDestinations =
    //     context.read<DestinationsProvider>().destinations_data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //var read = context.read<GenderalProvader>();
    // read.itemsDestinations =
    //     context.read<DestinationsProvider>().destinations_data;

     return Container(
      height: getScreenHeight() / 6,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            context.read<DestinationsProvider>().destinations_data.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Container(
                      width: getScreenWidth() / 4,
                      height: getScreenHeight() / 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(context
                                  .read<DestinationsProvider>()
                                  .destinations_data[index]
                                  .imageUrl),
                              fit: BoxFit.fill)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Text(
                      '${context.read<DestinationsProvider>().destinations_data[index].name}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
