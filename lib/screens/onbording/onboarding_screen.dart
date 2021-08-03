import 'package:ecommerce_final_project/models/onboarding_content.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

List<OnBoardingContent> a = [
  OnBoardingContent(
      imageURL: 'assets/al batra.jpg', text: 'text', subText: 'subText'),
  OnBoardingContent(
      imageURL: 'assets/farm.jpg', text: 'text', subText: 'subText'),
  OnBoardingContent(
      imageURL: 'assets/Enjoyment1.jpg', text: 'text', subText: 'subText'),
  OnBoardingContent(
      imageURL: 'assets/sport.jpg', text: 'text', subText: 'subText'),
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: OnBoardingBody(content: a)),
    );
  }
}
