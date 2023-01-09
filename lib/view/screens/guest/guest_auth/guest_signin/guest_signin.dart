import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_forgot_pass/guest_forgot_pass.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Sign in',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          MyTextField(
            label: 'Email',
            hintText: 'example@gmail.com',
          ),
          MyTextField(
            label: 'Password',
            hintText: '***************',
          ),
          MyText(
            onTap: () => Get.to(() => GuestForgotPass()),
            align: TextAlign.end,
            paddingTop: 10,
            text: 'Forgot password?',
            size: 14,
            weight: FontWeight.w700,
            paddingBottom: 40,
          ),
          MyButton(
            buttonText: 'Sign in',
            onTap: () {},
          ),
          SizedBox(
            height: 40,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              MyText(
                text: 'Don’t have an account? ',
                size: 14,
                fontFamily: SF_UI_DISPLAY,
                color: kGrey10Color,
              ),
              MyText(
                onTap: () {},
                text: 'Sign up',
                size: 14,
                weight: FontWeight.w700,
                color: kGrey10Color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
