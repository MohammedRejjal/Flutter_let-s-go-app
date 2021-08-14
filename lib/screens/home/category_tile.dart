import 'package:ecommerce_final_project/size_config.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    return Stack(children: [
      Container(
        height: getScreenHeight() / 5,
        width: getScreenWidth()/3.9,
        margin: EdgeInsets.all(10),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: new DecorationImage(
            image: new AssetImage('assets/farm.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          Container(        margin: EdgeInsets.all(10),
padding: EdgeInsets.all(5),
            
            width: getScreenWidth()/3.5,
child: Text(category ,style: TextStyle(color: Colors.white),), 
         ),
          SizedBox(height: 20,)
        ],
      )
    ]);
  }
}
