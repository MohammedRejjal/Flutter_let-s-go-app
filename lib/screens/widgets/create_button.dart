import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget creatButton({required String? text,required Function? func}) => Container(
    padding: EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    // ignore: deprecated_member_use
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        child: Text(
          '$text',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        onPressed: () {
          func;
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          primary: Colors.white,
        ),
      ),
    ));
