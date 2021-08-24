import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatestExpereans extends StatefulWidget {
  final int count;
  const LatestExpereans({Key? key, required this.count}) : super(key: key);

  @override
  _LatestExpereansState createState() => _LatestExpereansState();
}

class _LatestExpereansState extends State<LatestExpereans> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight()/3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              padding: EdgeInsets.all(2),
              width: getScreenWidth()/5.5,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20 ),topRight:Radius.circular(20 ) ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/farm.jpg'),
                        ),
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                       image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/farm.jpg'),
                        ),
                      ),
                    ),
                    flex: 5,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight:  Radius.circular(20 ),bottomLeft: Radius.circular(20 ) ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/farm.jpg'),
                        ),
                      ),
                    ),
                    flex: 2,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
