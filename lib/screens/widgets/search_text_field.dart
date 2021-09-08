import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.onWhiteBackGround,
  }) : super(key: key);
  final bool onWhiteBackGround;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: onWhiteBackGround ? Colors.grey[400] : Colors.blueGrey[50],
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        prefixIcon: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.0,
                    offset: Offset(1.0, 1.0), // shadow direction: bottom right
                  ),
                ],
                color: Colors.white),
            child: Icon(
              Icons.search,
              color:  Colors.grey,
            )),
        hintText: 'Search',
        hintStyle: TextStyle(color:  Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      ),
    );
  }
}
