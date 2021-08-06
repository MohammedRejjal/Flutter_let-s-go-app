import 'package:ecommerce_final_project/screens/widgets/create_button.dart';
import 'package:ecommerce_final_project/screens/widgets/create_textfield.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),
        ),
        Container(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create an account, It's free ",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                Column(
                  children: <Widget>[
                    inputFile(
                      label: "Username",
                      controller: myController1, InputType: TextInputType.name

                    ),
                    inputFile(label: "Email", controller: myController2),
                    inputFile(
                        label: "Password",
                        obscureText: true,
                        controller: myController3,
                        
                        ),
                    inputFile(
                        label: "Confirm Password",
                        obscureText: true,
                        controller: myController4),
                  ],
                ),
                creatButton(text: 'Sign Up'),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 50,),
                    Text("Already have an account?"),
                    InkWell(
                      child: Text(
                        " Login",
                        style: TextStyle(
                          fontSize: 14),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

final TextEditingController myController1 = TextEditingController();
final TextEditingController myController2 = TextEditingController();
final TextEditingController myController3 = TextEditingController();
final TextEditingController myController4 = TextEditingController();

// we will be creating a widget for text field

