import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class ChatBubble extends StatelessWidget {
  ChatBubble({
    Key? key,
    required this.isMe,
    required this.otherUserImg,
    required this.otherUserName,
    required this.msgTime,
    required this.msg,
    required this.myImg,
  }) : super(key: key);

  final String msg, otherUserName, otherUserImg, msgTime, myImg;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          isMe
              ? Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  alignment: WrapAlignment.end,
                  children: [
                    MyText(
                      text: 'Me',
                      size: 10,
                      weight: FontWeight.w500,
                      fontFamily: POPPINS,
                      color: kBlackColor,
                    ),
                    MyText(
                      text: '$msgTime',
                      size: 10,
                      color: kGrey4Color,
                    ),
                    CommonImageView(
                      height: 24,
                      width: 24,
                      url: myImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              : Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  alignment: WrapAlignment.start,
                  children: [
                    CommonImageView(
                      height: 24,
                      width: 24,
                      url: otherUserImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                    MyText(
                      text: otherUserName,
                      size: 10,
                      weight: FontWeight.w500,
                      fontFamily: POPPINS,
                      color: kBlackColor,
                    ),
                    MyText(
                      text: '$msgTime',
                      size: 10,
                      color: kGrey5Color,
                    ),
                  ],
                ),
          Align(
            alignment: isMe ? Alignment.topRight : Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 4,
                right: isMe ? 32 : 0,
                left: isMe ? 0 : 32,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.05),
                    offset: Offset(2, 2),
                    blurRadius: 14,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isMe ? 10 : 0),
                  topRight: Radius.circular(isMe ? 0 : 10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  MyText(
                    text: msg,
                    size: 12,
                    fontFamily: POPPINS,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
