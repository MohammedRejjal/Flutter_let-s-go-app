 
import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberOfPerson extends StatefulWidget {
  const NumberOfPerson({Key? key}) : super(key: key);

  @override
  _NumberOfPersonState createState() => _NumberOfPersonState();
}

int num = 0;
String getText() {
  if (num == 0) {
    return 'SET YOUR NUMBER';
  } else {
    return num as String;
    // return '${date.month}/${date.day}/${date.year}';
  }
}
int _n = 0;

class _NumberOfPersonState extends State<NumberOfPerson> {
  void add() {
  setState(() {
    _n++;
  });
}

void minus() {
  setState(() {
    if (_n != 0) 
      _n--;
  });
}

Future aaa() async{

  return await  showDialog(
      context: context,
      builder: (ctx) {
        return Center(
          child:   Container(
            color: Colors.white,
            height: 100,
              child: new Center(
                child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FloatingActionButton(
              onPressed: add,
              child: new Icon(Icons.add, color: Colors.black,),
              backgroundColor: Colors.white,),
          
            new Text('$_n',
                style: new TextStyle(fontSize: 60.0)),
          
            new FloatingActionButton(
              onPressed: minus,
              child: new Icon(
               const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                 color: Colors.black),
              backgroundColor: Colors.white,),
          ],
                ),
              ),
            
          ));
       
      },
    );
  
  
  

}
  @override
  Widget build(BuildContext context) {
    return ButtonHeaderWidget(
        title: 'The number of people',
        text: getText(),
        onClicked: () => aaa( ),
      );
  }
}
