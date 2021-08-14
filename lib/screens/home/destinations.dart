import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Destinations extends StatefulWidget {
  final int count ;
  const Destinations({ Key? key ,required this.count}) : super(key: key);

  @override
  _DestinationsState createState() => _DestinationsState();
}

class _DestinationsState extends State<Destinations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child:Column(
                children: [
           Container(
             width: 110,
             child: Image.asset('assets/farm.jpg'))

          
                ],
              ));
           
        },
      ),
    );
  }
}