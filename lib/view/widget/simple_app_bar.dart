import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

AppBar simpleAppBar({
  String? title,
  VoidCallback? onBackIconTap,
  Color? bgColor,
  bool? haveLeading = true,
  String? fontFamily,
  bool? haveActionText = false,
  String? actionText,
  VoidCallback? onActionTextTap,
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
    actions: [
      haveActionText!
          ? Center(
              child: MyText(
                onTap: onActionTextTap,
                text: actionText,
                size: 14,
                color: kTertiaryColor,
                fontFamily: POPPINS,
                weight: FontWeight.w600,
                paddingRight: 20,
              ),
            )
          : SizedBox(),
    ],
  );
}
