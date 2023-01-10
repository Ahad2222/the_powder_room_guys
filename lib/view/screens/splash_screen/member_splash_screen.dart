import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/member/member_auth/member_signin/member_signin.dart';

class MemberSplashScreen extends StatefulWidget {
  @override
  State<MemberSplashScreen> createState() => _MemberSplashScreenState();
}

class _MemberSplashScreenState extends State<MemberSplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  void splashScreenHandler() {
    Future.delayed(
      Duration(seconds: 2),
          () => Get.offAll(() => MemberSignIn()),
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
