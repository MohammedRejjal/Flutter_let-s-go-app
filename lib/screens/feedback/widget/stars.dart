import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:provider/provider.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key, this.watcher}) : super(key: key);
  final Iterable<Detailes>? watcher;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_border,
              size: 45,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star_border,
              size: 45,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star_border,
              size: 45,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star_border,
              size: 45,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.star_border,
              size: 45,
              color: Colors.amberAccent,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
      onTap: () {
        show(context);
      },
    );
  }

  void show(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            // set your own image/icon widget
            title: "Evaluate your experience",
            commentHint: "Write your comment",
            submitButton: "SUBMIT",

            onSubmitted: (rating) {
              print("111111111${context.read<DetailsProvidder>().detailesData.first}");
              
                 context .read<DetailsProvidder>()
                  .addFeedback(url: watcher!.first.name, feedback: {
                '${context.read<Userprovider>().user!.userId}': {
                  'feedback': rating.comment,
                  'rating': rating.rating
                }
              });

            },
          );
        });             

  }
}
