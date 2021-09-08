import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/screens/feedback/widget/comment.dart';
import 'package:ecommerce_final_project/screens/feedback/widget/stars.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:flutter/material.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({this.watcher, Key? key}) : super(key: key);
  final Iterable<Detailes>? watcher;
  @override
  _FeedBackScreenState createState() => _FeedBackScreenState();
}

AppApi a = AppApi();

class _FeedBackScreenState extends State<FeedBackScreen> {
  @override
  void initState() {
    print("name ==${widget.watcher!.first.name}");


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Comment(watcher: widget.watcher);

  }
}
