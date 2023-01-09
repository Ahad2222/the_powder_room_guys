import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';

AppBar profileImageAppBar({
  String? imgUrl,
  VoidCallback? onMention,
  VoidCallback? onNotification,
}) {
  return AppBar(
    leadingWidth: 70,
    centerTitle: true,
    backgroundColor: kSecondaryColor,
    leading: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: CommonImageView(
            height: 40,
            width: 40,
            radius: 100.0,
            url: imgUrl,
          ),
        ),
      ],
    ),
    title: Image.asset(
      Assets.imagesLogoPlaceHolder,
      height: 17.26,
    ),
    actions: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Wrap(
            spacing: 12,
            children: [
              GestureDetector(
                onTap: onMention,
                child: Image.asset(
                  Assets.imagesMention,
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: onNotification,
                child: Image.asset(
                  Assets.imagesNotificationBell,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}