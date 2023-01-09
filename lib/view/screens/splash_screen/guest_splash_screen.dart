import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_signup.dart';

class GuestSplashScreen extends StatefulWidget {
  @override
  State<GuestSplashScreen> createState() => _GuestSplashScreenState();
}

class _GuestSplashScreenState extends State<GuestSplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  void splashScreenHandler() {
    Future.delayed(
      Duration(seconds: 2),
      () => Get.offAll(() => GuestSignup()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.imagesLogoPlaceHolder,
          height: 30,
        ),
      ),
    );
  }
}
