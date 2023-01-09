import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_email.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_pass.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/name.dart';

class GuestSignController extends GetxController {
  static GuestSignController instance = Get.find<GuestSignController>();
  RxInt stackIndex = 0.obs;
  List<Widget> children = [
    GuestName(),
    GuestEmail(),
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
