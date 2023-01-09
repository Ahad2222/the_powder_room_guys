import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/instance.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          appBar: simpleAppBar(
            fontFamily: POPPINS,
            title:
                '${guestSignController.stackIndex.value + 1}/${guestSignController.children.length}',
          ),
          body: Obx(
            () {
              return IndexedStack(
                index: guestSignController.stackIndex.value,
                children: guestSignController.children,
              );
            },
          ),
        );
      },
    );
  }
}
