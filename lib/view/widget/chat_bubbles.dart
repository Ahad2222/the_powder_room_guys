import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget {
  ChatBubble({
    Key? key,
    required this.isMe,
    required this.otherUserImg,
    required this.otherUserName,
    required this.msgTime,
    required this.msg,
    required this.myImg,
    this.haveTaskBubble,
    this.haveMention = false,
    this.mentionPerson,
    this.onEmojiTap,
    this.onLikeTap,
    this.onLoveTap,
    this.likeCount = 0.0,
    this.loveCount = 0.0,
    this.isOnTaskDetail = false,
  }) : super(key: key);

  final String msg, otherUserName, otherUserImg, msgTime, myImg;
  final bool isMe;
  String? mentionPerson;
  bool? haveTaskBubble, haveMention;
  double? likeCount, loveCount;
  VoidCallback? onLikeTap, onLoveTap, onEmojiTap;
  bool? isOnTaskDetail;

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  bool showReaction = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        left: widget.isMe ? 40 : 0,
        right: widget.isMe ? 0 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          widget.isMe
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
                      text: '${widget.msgTime}',
                      size: 10,
                      color: kGrey4Color,
                    ),
                    CommonImageView(
                      height: 24,
                      width: 24,
                      url: widget.myImg,
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
                      url: widget.otherUserImg,
                      radius: 100,
                      fit: BoxFit.cover,
                    ),
                    MyText(
                      text: widget.otherUserName,
                      size: 10,
                      weight: FontWeight.w500,
                      fontFamily: POPPINS,
                      color: kBlackColor,
                    ),
                    MyText(
                      text: '${widget.msgTime}',
                      size: 10,
                      color: kGrey5Color,
                    ),
                  ],
                ),
          widget.haveTaskBubble!
              ? Align(
                  alignment:
                      widget.isMe ? Alignment.topRight : Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 4,
                      right: widget.isMe ? 32 : 0,
                      left: widget.isMe ? 0 : 32,
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
                        topLeft: Radius.circular(widget.isMe ? 10 : 0),
                        topRight: Radius.circular(widget.isMe ? 0 : 10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MyText(
                          text: 'Task Name',
                          color: kGrey10Color,
                        ),
                        MyText(
                          paddingTop: 4,
                          text: 'Mobile App Design',
                          size: 12,
                          color: kGrey8Color,
                          paddingBottom: 8,
                        ),
                        MyText(
                          text: 'Deadline',
                          color: kGrey10Color,
                        ),
                        MyText(
                          paddingTop: 4,
                          text: '08:00am - until 25-01-2023; 09:00am',
                          size: 12,
                          color: kGrey8Color,
                          paddingBottom: 8,
                        ),
                        MyText(
                          text: 'Description',
                          color: kGrey10Color,
                        ),
                        MyText(
                          paddingTop: 4,
                          text:
                              'Privacy Policies are required by law to be posted on your website. You may be required to include specific clauses in your Privacy Policy, depending on the applicable laws within your area or where you are conducting business.',
                          size: 12,
                          color: kGrey8Color,
                          paddingBottom: 8,
                        ),
                        MyText(
                          text: 'Attachment',
                          color: kGrey10Color,
                          paddingBottom: 8,
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: List.generate(
                            4,
                            (index) {
                              return CommonImageView(
                                height: 32,
                                width: 32,
                                url: dummyImg3,
                                radius: 5.0,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          runSpacing: 10,
                          spacing: 10,
                          children: List.generate(
                            4,
                            (index) {
                              List<Map<String, dynamic>> dummyData = [
                                {
                                  'title': 'Zaire Septimus',
                                  'color': kBlueColor,
                                },
                                {
                                  'title': 'Desirae Philips',
                                  'color': kOrangeColor,
                                },
                                {
                                  'title': 'Kierra Curtis',
                                  'color': kPurpleColor,
                                },
                                {
                                  'title': 'Miracle Siphron',
                                  'color': kGreenColor,
                                },
                              ];
                              return Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: dummyData[index]['color']
                                      .withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: MyText(
                                  text: dummyData[index]['title'],
                                  size: 12,
                                  color: dummyData[index]['color'],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : GestureDetector(
                  child: Column(
                    crossAxisAlignment: widget.isMe
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onLongPress: () {
                          setState(() {
                            showReaction = true;
                          });
                        },
                        child: Align(
                          alignment: widget.isMe
                              ? Alignment.topRight
                              : Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 4,
                              right: widget.isMe ? 32 : 0,
                              left: widget.isMe ? 0 : 32,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: widget.isOnTaskDetail! && widget.isMe
                                  ? kTextColor
                                  : kSecondaryColor,
                              boxShadow: [
                                BoxShadow(
                                  color: kBlackColor.withOpacity(0.05),
                                  offset: Offset(2, 2),
                                  blurRadius: 14,
                                ),
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(widget.isMe ? 10 : 0),
                                topRight: Radius.circular(widget.isMe ? 0 : 10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                widget.isMe
                                    ? widget.haveMention!
                                        ? Container(
                                            margin: EdgeInsets.only(
                                              right: 10,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  kBlueColor.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: MyText(
                                              text: widget.mentionPerson,
                                              size: 12,
                                              color: kBlueColor,
                                            ),
                                          )
                                        : SizedBox()
                                    : SizedBox(),
                                MyText(
                                  text: widget.msg,
                                  size: 12,
                                  fontFamily: POPPINS,
                                  color: widget.isOnTaskDetail! && widget.isMe
                                      ? kSecondaryColor
                                      : kTextColor,
                                ),
                                widget.isMe == false
                                    ? widget.haveMention!
                                        ? Container(
                                            margin: EdgeInsets.only(
                                              left: 10,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  kBlueColor.withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: MyText(
                                              text: widget.mentionPerson,
                                              size: 12,
                                              color: kBlueColor,
                                            ),
                                          )
                                        : SizedBox()
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      showReaction
                          ? Padding(
                              padding: EdgeInsets.only(
                                top: 4,
                                right: widget.isMe ? 32 : 0,
                                left: widget.isMe ? 0 : 32,
                              ),
                              child: Wrap(
                                spacing: 8,
                                alignment: WrapAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: widget.onLikeTap,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: kTextColor,
                                        ),
                                      ),
                                      child: MyText(
                                        text:
                                            '👍 ${widget.likeCount!.toInt().toString()}',
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: widget.onLoveTap,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: kTextColor,
                                        ),
                                      ),
                                      child: MyText(
                                        text:
                                            '😍 ${widget.loveCount!.toInt().toString()}',
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: widget.onEmojiTap,
                                    child: Container(
                                      height: 20,
                                      width: 28,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: kTextColor,
                                        ),
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          Assets.imagesAddEmoji,
                                          height: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
