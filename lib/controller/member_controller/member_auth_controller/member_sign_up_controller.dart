import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_pass.dart';
import 'package:the_powder_room_guys/view/screens/member/member_auth/member_signup/member_email.dart';
import 'package:the_powder_room_guys/view/screens/member/member_auth/member_signup/member_name.dart';

class MemberAuthController extends GetxController {
  static MemberAuthController instance = Get.find<MemberAuthController>();
  RxInt stackIndex = 0.obs;
  List<Widget> children = [
    MemberName(),
    MemberEmail(),
    GuestPass(),
  ];

  void backButton() {
    if (stackIndex.value == 0) {
      Get.back();
    } else {
      stackIndex.value--;
    }
  }

  void updateStep(int index) => stackIndex.value = index;
}
