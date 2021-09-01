import 'package:ecommerce_final_project/constants.dart';
import 'package:flutter/material.dart';

Widget inputFile(
    {   label, obscureText = false, TextEditingController? controller ,TextInputType ?inputType }) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: kLabelStyle,
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        decoration: kBoxDecorationStyle,
        alignment: Alignment.centerLeft,
        height: 50.0,
        child: TextField(
          textInputAction: TextInputAction.next,
          keyboardType:inputType ,
          controller: controller,
          obscureText: obscureText,

          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '   Enter your ' + label,
            hintStyle: kHintTextStyle,
          ),
 ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}