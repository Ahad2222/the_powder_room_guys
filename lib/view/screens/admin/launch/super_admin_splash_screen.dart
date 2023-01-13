import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/admin/launch/admin_get_started.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/super_admin_bottom_nav_bar/super_admin_bottom_nav_bar.dart';

class SuperAdminSplashScreen extends StatefulWidget {
  @override
  State<SuperAdminSplashScreen> createState() => _SuperAdminSplashScreenState();
}

class _SuperAdminSplashScreenState extends State<SuperAdminSplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenHandler();
  }

  void splashScreenHandler() {
    Future.delayed(
      Duration(seconds: 2),
      () => Get.offAll(
        () => SuperAdminBottomNavBar(),
      ),
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
