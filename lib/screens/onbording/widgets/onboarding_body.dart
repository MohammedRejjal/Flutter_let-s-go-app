import 'package:ecommerce_final_project/models/onboarding_content/onboarding_content.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/SignUp.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/loginScreen.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/screens/Application%20introduction/validationNumberScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    Key? key,
    required this.content,
  }) : super(key: key);
  final List<OnBoardingContent> content;

  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  var pageIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (int y) {
            setState(() {
              pageIndex = y;
            });
          },
          controller: _pageController,
          itemCount: widget.content.length,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            "${widget.content[pageIndex].imageURL}",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height / (2.5),
                            width: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Card(
                      elevation: 100,
                      color: Colors.blueGrey[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "${widget.content[pageIndex].text}",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text("${widget.content[pageIndex].subText}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Dot(x: pageIndex == 0),
              Dot(x: pageIndex == 1),
              Dot(x: pageIndex == 2),
              Dot(
                x: pageIndex == 3,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            pageIndex == widget.content.length - 1
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green, fixedSize: Size(100, 50)),
                          onPressed: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool("Start", true);

                            Navigator.pushReplacementNamed(
                                context, SignUpScreen.namedRoute);
                          },
                          child: Center(
                            child: Text('Sign Up'),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green, fixedSize: Size(100, 50)),
                          onPressed: ()async {
                             SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            prefs.setBool("Start", true);
                            Navigator.pushReplacementNamed(
                                context, LoginScreen.namedRoute);
                          },
                          child: Center(
                            child: Text('Login'),
                          ),
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, top: 10, left: 25, right: 25),
                              child: Text('Skip'),
                            ),
                            color: Colors.blueGrey[50],
                          )),
                      TextButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.bounceInOut);
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10, top: 10, left: 25, right: 25),
                              child: Text('Next'),
                            ),
                            color: Colors.blueGrey[50],
                          ))
                    ],
                  ),
            SizedBox(
              height: 30,
            )
          ],
        )
      ],
    );
  }
}
