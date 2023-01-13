import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_email.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_name.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_pass.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_auth/admin_signup/admin_phone.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_email.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_pass.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/name.dart';

class AdminAuthController extends GetxController {
  static AdminAuthController instance = Get.find<AdminAuthController>();
  RxInt stackIndex = 0.obs;
  List<Widget> children = [
    AdminName(),
    AdminEmail(),
    AdminPhone(),
    AdminPass(),
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
