import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signin/admin_signin.dart';
import 'package:the_powder_room_guys/view/screens/admin/launch/admin_get_started.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signin/guest_signin.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_signup.dart';

class AdminSplashScreen extends StatefulWidget {
  @override
  State<AdminSplashScreen> createState() => _AdminSplashScreenState();
}

class _AdminSplashScreenState extends State<AdminSplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  void splashScreenHandler() {
    Future.delayed(
      Duration(seconds: 2),
      () => Get.offAll(() => AdminGetStarted()),
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
