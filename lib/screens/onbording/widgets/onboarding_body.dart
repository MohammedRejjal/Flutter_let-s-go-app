import 'package:ecommerce_final_project/models/onboarding_content.dart';
import 'package:ecommerce_final_project/screens/onbording/onboarding_screen.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/dot.dart';
import 'package:ecommerce_final_project/screens/sign_up/sing_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "${widget.content[index].imageURL}",
                              fit: BoxFit.fill,
                              height:
                                  MediaQuery.of(context).size.height / (2.5),
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Text("${widget.content[index].text}"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("${widget.content[index].subText}"),
                        ],
                      ),
                    )
                  ],
                ),
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
                ? Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, fixedSize: Size(200, 50)),
                        onPressed: () {
                          Navigator.pushNamed(context, SingUpScreen.namedRoute);
                        },
                        child: Text('Lets Go')))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SingUpScreen.namedRoute);
                          },
                          child: Text('Skip')),
                      TextButton(
                          onPressed: () {
                            _pageController.nextPage(
                                duration: Duration(milliseconds: 1000),
                                curve: Curves.bounceInOut);
                          },
                          child: Text('next'))
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
