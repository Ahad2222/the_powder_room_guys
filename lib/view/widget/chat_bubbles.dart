import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class ChatBubble extends StatelessWidget {
  ChatBubble({
    Key? key,
    required this.isMe,
    required this.otherUserImg,
    required this.otherUserName,
    this.time,
    required this.date,
    required this.msgTime,
    required this.msg,
    required this.myImg,
  }) : super(key: key);

  final String msg, otherUserName, otherUserImg, date, msgTime, myImg;
  final bool isMe;
  String? time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          time!.isNotEmpty ? timeBubble(time!) : const SizedBox(),
          isMe
              ? Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  alignment: WrapAlignment.end,
                  children: [
                    MyText(
                      text: '$date, $msgTime',
                      size: 10,
                      color: kGrey5Color,
                    ),
                    MyText(
                      text: 'Me',
                      size: 10,
                      color: kBlackColor,
                    ),
                    CommonImageView(
                      height: 30,
                      width: 30,
                      url: myImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              : Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6,
                  alignment: WrapAlignment.start,
                  children: [
                    CommonImageView(
                      height: 30,
                      width: 30,
                      url: otherUserImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                    MyText(
                      text: otherUserName,
                      size: 10,
                      color: kBlackColor,
                    ),
                    MyText(
                      text: '$date, $msgTime',
                      size: 10,
                      color: kGrey5Color,
                    ),
                  ],
                ),
          Align(
            alignment: isMe ? Alignment.topRight : Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isMe ? kSecondaryColor : kGrey1Color,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  MyText(
                    text: msg,
                    size: 14,
                    color: isMe ? kTertiaryColor : kBlackColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget timeBubble(String time) {
    return Center(
      child: MyText(
        paddingBottom: 18,
        text: time,
        size: 12,
        color: kGrey5Color,
      ),
    );
  }
}
