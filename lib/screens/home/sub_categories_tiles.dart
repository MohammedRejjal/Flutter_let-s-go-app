import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SunCategoriesTiles extends StatefulWidget {
  const SunCategoriesTiles({
    Key? key,
    required this.name,
    required this.id,
  }) : super(key: key);
  final String id;
  final String name;

  @override
  _SunCategoriesTilesState createState() => _SunCategoriesTilesState();
}

class _SunCategoriesTilesState extends State<SunCategoriesTiles> {
  @override
  Widget build(BuildContext context) {
    var watcher = context.watch<SubCategoryProvider>();

    return GestureDetector(
      child: Column(
        children: [
          ClipOval(
              child: Container(
                  color: Colors.blue[50],
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.blueAccent,
                    size: 40,
                  ))),
          SizedBox(
            height: 9,
          ),
          Container(
            child: Text(
                widget.name),
          ),
        ],
      ),
    );
  }
}
