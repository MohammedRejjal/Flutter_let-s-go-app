import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatestExpereans extends StatefulWidget {
 final int count ;
  const LatestExpereans({Key? key ,required this.count} ) : super(key: key);

  @override
  _LatestExpereansState createState() => _LatestExpereansState();
}

class _LatestExpereansState extends State<LatestExpereans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(width: 100,
            height: 100,
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/farm.jpg'),flex: 5,),       
                             Expanded(child: Image.asset('assets/farm.jpg'),flex: 5,)
                             ,                  Expanded(child: Image.asset('assets/farm.jpg'),flex: 2,)


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
