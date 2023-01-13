import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signin/admin_signin.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_signup.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class AdminGetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Image.asset(
          Assets.imagesLogoPlaceHolder,
          width: 68,
        ),
      ),
      body: Padding(
        padding: DEFAULT_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyText(
              text: 'Best Communicate with The Powder Room Guys',
              size: 24,
              weight: FontWeight.w700,
              height: 1.5,
              align: TextAlign.center,
              paddingBottom: 24,
            ),
            Image.asset(
              Assets.imagesGetStartedImage,
              height: 287.83,
            ),
            MyText(
              paddingTop: 24,
              text:
                  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document',
              size: 12,
              color: kGrey8Color,
              height: 1.5,
              align: TextAlign.center,
              paddingBottom: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 57.5),
              child: MyButton(
                buttonText: 'Get Started',
                onTap: () => Get.to(() => AdminSignup()),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                MyText(
                  text: 'Already have an account? ',
                  size: 14,
                  fontFamily: SF_UI_DISPLAY,
                  color: kGrey10Color,
                ),
                MyText(
                  onTap: () => Get.to(() => AdminSignIn()),
                  text: 'Sign in',
                  size: 14,
                  weight: FontWeight.w700,
                  color: kGrey10Color,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
