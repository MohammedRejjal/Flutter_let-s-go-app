import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/screens/home/home_screen.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(this.watcher, {Key? key}) : super(key: key);
  final Iterable<Detailes> watcher;
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

var pageIndex = 0;

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void dispose() {
    pageIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var listOfDot = [];
    void getDot() {
      for (var x = 0; x < widget.watcher.first.imagesUrl.length; x++) {
        listOfDot.add(Dot(x: pageIndex == x));
      }
    }

    getDot();
    SizeConfig(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: getScreenHeight() / 2.6,
                  child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    itemCount: widget.watcher.first.imagesUrl.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network(
                          '${widget.watcher.first.imagesUrl[index]}',
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: getScreenHeight() / 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [...listOfDot],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8 ,bottom: 2,top: 20),
              child: Row(
                children: [
                  SizedBox(
                  
                  ),
                  Text(
                    'details',
                    style: TextStyle(fontSize: getScreenWidth() / 40 ,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.location_on),
                  Text(
                    '${widget.watcher.first.location}',
                    style: TextStyle(fontSize: getScreenWidth() / 40),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.watcher.first.infoDetails}',
                style: TextStyle(fontSize: getScreenWidth() / 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
