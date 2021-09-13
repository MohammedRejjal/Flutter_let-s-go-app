import 'package:ecommerce_final_project/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 
 
class Account extends StatefulWidget {
  
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
              var watcher = context.watch<Userprovider>();


    return SafeArea(
      child: Scaffold(
           appBar: AppBar(title: Text('Profile' ,style: TextStyle(color: Colors.black),), backgroundColor: Colors.blueGrey[100],),
         body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://lh3.googleusercontent.com/dn3RNuLSpRbwuf-19fM8S9BPyc3BuQsFHuHZeUgmi29cOmgb0tPONHU_tB4eGnUl17Vg6MaO1hb_0Y4djHh36qGrwKwGfXxDqWvSmKvMfRoGx65l-mX7h5tDPCm9Sv7PGLQpfJV0"))),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.green,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                buildTextField("Full Name", "${watcher.userData!.name}", false),
                buildTextField("E-mail", "${watcher.userData!.email}", false),
                 buildTextField("Booking", "Booking", false),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField (
      String labelText, String placeholder, bool isPasswordTextField) {
    return  Padding (
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
         decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
