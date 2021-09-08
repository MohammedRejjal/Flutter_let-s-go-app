import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/providers/details_providder.dart';
import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:ecommerce_final_project/screens/feedback/widget/stars.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Comment extends StatefulWidget {
  const Comment({Key? key, required this.watcher}) : super(key: key);

  final Iterable<Detailes>? watcher;
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  void initState() {
    // context.read<DetailsProvidder>().getFeedback('${widget.watcher!.first.name}/feedback.json');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.blueGrey[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      'Rate this app',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  'Tell others what you thiink',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Stars(watcher: widget.watcher),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: context.watch<DetailsProvidder>().feedback.length,
              itemBuilder: (BuildContext context, int index) {
                print(
                    "objectllasd ${context.watch<DetailsProvidder>().feedback.length}");
                return context.watch<DetailsProvidder>().feedback[index] != 0
                    ? Card(
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          color: Colors.blueGrey[200],
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // Text(
                                  // '${context.watch<DetailsProvidder>().feedback[index] != 0 ? context.watch<DetailsProvidder>().feedback[index] : ""}'),
                                  Text(
                                      "${context.watch<DetailsProvidder>().feedback.keys.elementAt(index)}"),

                                  Spacer(),
                                  Star(context
                                      .watch<DetailsProvidder>()
                                      .feedback.values.elementAt(index)['rating']),
                                ],
                              ),
                              Text(context
                                      .watch<DetailsProvidder>()
                                      .feedback.values.elementAt(index)['feedback']),
                            ],
                          ),
                        ),
                      )
                    : SizedBox();
              }),
        ),
      ],
    );
  }
}

Star(int number) {
  switch (number) {
    case 1:
      return Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
        ],
      );
    case 2:
      return Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
        ],
      );
    case 3:
      return Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
        ],
      );
    case 4:
      return Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border),
        ],
      );
    case 5:
      return Row(
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
        ],
      );
  }
}