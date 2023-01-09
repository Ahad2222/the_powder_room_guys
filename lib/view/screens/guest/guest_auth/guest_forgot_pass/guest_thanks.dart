import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_forgot_pass/guest_change_pass.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class GuestThanks extends StatefulWidget {
  @override
  State<GuestThanks> createState() => _GuestThanksState();
}

class _GuestThanksState extends State<GuestThanks> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => Get.off(() => GuestChangePass()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(
            text: 'Thanks!',
            align: TextAlign.center,
            size: 32,
            weight: FontWeight.w700,
            fontFamily: POPPINS,
          ),
          MyText(
            paddingTop: 8,
            color: kGrey8Color,
            text: 'Please check your email.',
            align: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
