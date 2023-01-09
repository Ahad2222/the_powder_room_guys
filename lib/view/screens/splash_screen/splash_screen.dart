import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  void splashScreenHandler() {
    Future.delayed(
      Duration(seconds: 2),
      () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyText(
          text: 'LOGO',
          size: 100,
        ),
      ),
    );
  }
}
