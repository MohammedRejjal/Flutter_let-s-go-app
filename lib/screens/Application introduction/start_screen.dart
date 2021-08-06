import 'package:ecommerce_final_project/screens/widgets/create_button.dart';
import 'package:ecommerce_final_project/screens/widgets/create_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}
final TextEditingController myController1 = TextEditingController();

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
      
      Column(
        children: [
          Expanded(child: Icon(Icons.ac_unit),
          flex: 1,


             ),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('    Enter your number'),
                      ],
                    ) ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: inputFile(controller: myController1 ,label: 'Number' ,InputType: TextInputType.number),
                    ),
               creatButton(text: 'send number' ,  )
                  ],
                ),
              )

             ) 
               ],
      ),])
    );
  }
}
