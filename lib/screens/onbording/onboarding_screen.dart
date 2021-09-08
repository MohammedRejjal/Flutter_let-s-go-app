import 'package:ecommerce_final_project/models/onboarding_content/onboarding_content.dart';
import 'package:ecommerce_final_project/screens/onbording/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

List<OnBoardingContent> onBoardingContent = [
  OnBoardingContent(
      imageURL: 'assets/al batra.jpg', text: 'Why do we use it? ', subText:"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
  OnBoardingContent(
      imageURL: 'assets/farm.jpg', text: 'Where does it come from?', subText: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,'),
  OnBoardingContent(
      imageURL: 'assets/Enjoyment1.jpg', text: 'Where can I get some?', subText: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable'),
  OnBoardingContent(
      imageURL: 'assets/sport.jpg', text: 'What is Let\'s Go app?', subText: 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries'),
];

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: OnBoardingBody(content: onBoardingContent)),
    );
  }
}
