import 'package:ecommerce_final_project/providers/user_provider.dart';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'loginScreen.dart';

class SignUpScreen extends StatelessWidget {
  static const namedRoute = '/SignupScreen';
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Stack(children: <Widget>[
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
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      TextFormField(
                          controller: numberController,
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.blueGrey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Enter your Number',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              fillColor: Colors.white10),
                          autofillHints: [AutofillHints.telephoneNumber],
                          validator: (val) {
                            print(val);
                            if (val!.isEmpty || val.length < 10) {
                              return "Length must be 10";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(height: 10),
                      TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.blueGrey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Enter your Name',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.teal[200]!),
                                  borderRadius: BorderRadius.circular(10)),
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              fillColor: Colors.white10),
                          autofillHints: [AutofillHints.name],
                          validator: (val) {
                            print(val);
                            if (val!.isEmpty) {
                              return "Please Enter Your Name";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 28,
                      ),
                      TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.blueGrey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Enter your Email',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.teal[200]!),
                                  borderRadius: BorderRadius.circular(10)),
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              fillColor: Colors.white10),
                          autofillHints: [AutofillHints.email],
                          validator: (val) {
                            print(val);
                            if (val!.isNotEmpty &&
                                EmailValidator.validate(val)) {
                              return null;
                            } else {
                              return "please enter the correct email";
                            }
                          }),
                      SizedBox(height: 28),
                      TextFormField(
                          controller: passController,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.blueGrey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Enter your Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.teal[200]!),
                                  borderRadius: BorderRadius.circular(10)),
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              fillColor: Colors.white10),
                          autofillHints: [AutofillHints.password],
                          validator: (val) {
                            print(val);
                            if (val!.isEmpty || val.length < 8) {
                              return "Length must be more than 8 char";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 28,
                      ),
                      TextFormField(
                          controller: confirmController,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.blueGrey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              labelText: 'Confirm Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.teal[200]!),
                                  borderRadius: BorderRadius.circular(10)),
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              fillColor: Colors.white10),
                          autofillHints: [AutofillHints.password],
                          validator: (val) {
                            print(val);
                            if (val!.isEmpty || val.length < 8) {
                              return "Length must be more than 8 char";
                            } else {
                              return null;
                            }
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF527DAA),
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          try {
                            var reader = context.read<Userprovider>();
                            await reader.registration(
                                emailController.text, passController.text);
                            print('insingin__' + '${reader.user!.userId}');
                            reader.setUser(
                                url: '${reader.user!.userId}',
                                number: int.parse(numberController.text),
                                name: nameController.text,
                                email: emailController.text,
                                password: passController.text,
                                favirateList: [],
                                history: []);

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }),
                            );
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        child: Text(
                          " Login",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
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
      ),
    );
  }
}

final TextEditingController nameController = TextEditingController();

final TextEditingController numberController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passController = TextEditingController();
final TextEditingController confirmController = TextEditingController();
