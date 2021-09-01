 import 'package:ecommerce_final_project/providers/sub_category_provider.dart';
import 'package:ecommerce_final_project/screens/home/subSubCategories/sub_sub_categories.dart';
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

    return Column(
      children: [
        GestureDetector(
          child: Column(
            children: [
              ClipOval(
                  child: Container(
                      color: Colors.blue[50],
                      padding: EdgeInsets.all(15),
                   // child: Icon(IconData(int.parse("0xef75")
                     child: Icon(
                        Icons.ac_unit,
                        color: Colors.blueAccent,
                        size: 40,
                       )
                       )
                       ),
              SizedBox(
                height: 9,
              ),
              Container(
                child: Text(widget.name),
              ),
            ],
          ),
          onTap: () {
            //   Navigator.of(context).pushNamed(SubSubCategories.namedRoute);
            print('name=${widget.name}');
            print('id=${widget.id}');
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
              return SubSubCategories( name:widget.name , );
            }));
          },
        ),
   
   
      ],

      
    );
  }
}
