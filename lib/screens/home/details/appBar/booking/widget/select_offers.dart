import 'package:ecommerce_final_project/screens/home/details/appBar/booking/widget/button_widget.dart';
 import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectOffers extends StatefulWidget {
  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<SelectOffers> {
  List<Map<String,dynamic>>   offer =[];

    getText() {
    if (offer .length == 0) {
      return 'Select Your offer';
    } else {
      
      return offer;
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget(
        title: 'offers',
        text: getText(),
        onClicked: () {},
      );


}
