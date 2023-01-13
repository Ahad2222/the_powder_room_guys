import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_accept_terms.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/underline_text_field.dart';

class AdminPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyText(
            paddingTop: 16,
            paddingBottom: 40,
            align: TextAlign.center,
            text: 'Hello!',
            size: 32,
            fontFamily: SF_UI_DISPLAY,
            weight: FontWeight.w700,
          ),
          UnderlineTextField(
            hintText: 'Enter password',
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 27.5,
            ),
            child: MyButton(
              buttonText: 'Next',
              onTap: () => Get.to(() => AdminAcceptTerms()),
            ),
          ),
        ],
      ),
    );
  }
}
