import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/screens/member/member_bottom_nav_bar/member_bottom_nav_bar.dart';
import 'package:the_powder_room_guys/view/screens/terms_and_policies/policies.dart';
import 'package:the_powder_room_guys/view/screens/terms_and_policies/terms.dart';
import 'package:the_powder_room_guys/view/widget/congrats.dart';
import 'package:the_powder_room_guys/view/widget/custom_check_box.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberAcceptTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCheckBox(
                  onTap: () {},
                  isActive: true,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                        color: kTextColor,
                        fontFamily: POPPINS,
                      ),
                      children: [
                        TextSpan(
                          text: 'Do you accept ',
                        ),
                        TextSpan(
                          text: 'terms & conditions',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(
                                  () => Terms(),
                                ),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                        ),
                        TextSpan(
                          text: 'privacy policy',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(
                                  () => Policies(),
                                ),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            MyButton(
              buttonText: 'Next',
              onTap: () => Get.offAll(
                () => Congrats(
                  buttonText: 'Go to home',
                  congratsMsg: 'Account created successfully!',
                  onContinue: () => Get.offAll(() => MemberBottomNavBar()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
