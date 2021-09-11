import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

 
class PriceScreen extends StatefulWidget {
  const PriceScreen({required this.watcher, Key? key}) : super(key: key);
  final Iterable<Detailes> watcher;

  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Container(
      child: ListView.builder(
          itemCount:  widget.watcher.first.price!.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container( 
                color: Colors.lightBlue[800],
                 height: getScreenHeight()/8,
                child: Card(elevation: 20,shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),),
                shadowColor: Colors.blue[300],
                    color: Colors.blueGrey[100],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.monetization_on_outlined,
                            size: 65,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.watcher.first.price![index].keys.toString(),
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),  SizedBox(
                            width: 10,
                          ),
                          Text(widget.watcher.first.price![index].values.toString(),
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    )),
              ),
            );
          }),
    );
  }

 
}
