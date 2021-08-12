import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Image.asset('assets/farm.jpg'),          SizedBox(
            height: 5,
          ),
          Text(
            category,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
