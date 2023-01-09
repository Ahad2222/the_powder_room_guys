import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_forgot_pass/guest_thanks.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestForgotPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Forgot Password',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          MyTextField(
            label: 'Email',
            hintText: 'example@gmail.com',
            marginBottom: 40,
          ),
          MyButton(
            buttonText: 'Send',
            onTap: () => Get.to(() => GuestThanks()),
          ),
        ],
      ),
    );
  }
}
