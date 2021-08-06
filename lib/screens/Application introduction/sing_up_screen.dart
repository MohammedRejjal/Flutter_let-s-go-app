import 'package:ecommerce_final_project/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';

class validationNumberScreen extends StatelessWidget {
  static const namedRoute = '/validationNumberScreen';
  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Expanded(child: Center(child: Image.asset('assets/logo.png'))),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " your phone number",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: Colors.black12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('+962'),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 10,
                              child: Container(
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                  controller: mycontroller,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Number must be empty';
                                    } else
                                      return null;
                                  },
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    labelText: 'Enter the number',
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 0.0),
                                        borderRadius: BorderRadius.circular(9)),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 360,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0),
                                    side: BorderSide(
                                        color: Colors.teal, width: 2.0)))),
                        child: Text('next'),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, OtpScreen.namedRoute,
                                arguments: mycontroller.text);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
