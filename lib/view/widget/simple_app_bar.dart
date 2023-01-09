import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

AppBar simpleAppBar({
  String? title,
  VoidCallback? onBackIconTap,
  Color? bgColor,
  bool? haveLeading = true,
  String? fontFamily,
}) {
  return AppBar(
    backgroundColor: bgColor,
    centerTitle: true,
    leading: haveLeading!
        ? IconButton(
            onPressed: onBackIconTap ?? () => Get.back(),
            icon: Image.asset(
              Assets.imagesArrowBack,
              height: 24,
            ),
          )
        : SizedBox(),
    title: MyText(
      text: title,
      size: 16,
      fontFamily: fontFamily ?? SF_UI_DISPLAY,
      weight: FontWeight.w700,
    ),
  );
}
