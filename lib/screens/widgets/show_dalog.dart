import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showMaterialDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('An Error Occurred!'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close')),
            
          ],
        );
      });
}
