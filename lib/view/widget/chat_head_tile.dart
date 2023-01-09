import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/screens/chat/chat_screen.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class ChatHeadTiles extends StatelessWidget {
  ChatHeadTiles({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.lastMsg,
    required this.time,
    this.isSeen = false,
    this.unreadCount = 0,
  }) : super(key: key);

  final String profileImage, name, lastMsg, time;
  bool? isSeen;
  int? unreadCount;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSeen! ? kGrey1Color.withOpacity(0.5) : Colors.transparent,
      child: ListTile(
        onTap: () => Get.to(
          () => ChatScreen(),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        leading: CommonImageView(
          height: 40,
          width: 40,
          url: profileImage,
          fit: BoxFit.cover,
          radius: 100,
        ),
        title: MyText(
          text: name,
          size: 14,
          fontFamily: POPPINS,
          color: kGrey10Color,
          weight: FontWeight.w400,
        ),
        subtitle: MyText(
          text: lastMsg,
          size: 12,
          fontFamily: POPPINS,
          color: kGrey4Color,
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              paddingTop: 10,
              text: time,
              size: 12,
              fontFamily: POPPINS,
              color: kGrey4Color,
            ),
            unreadCount! > 0
                ? Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kRedColor,
                    ),
                    child: Center(
                      child: MyText(
                        text: unreadCount,
                        size: 10,
                        color: kSecondaryColor,
                      ),
                    ),
                  )
                : SizedBox(),
            isSeen!
                ? Image.asset(
                    Assets.imagesDoubleTick,
                    height: 24,
                  )
                : unreadCount! > 0
                    ? SizedBox()
                    : Image.asset(
                        Assets.imagesDoubleTick,
                        height: 24,
                        color: kGrey3Color,
                      )
          ],
        ),
      ),
    );
  }
}
