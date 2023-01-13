import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/attachment_button.dart';
import 'package:the_powder_room_guys/view/widget/chat_bubbles.dart';
import 'package:the_powder_room_guys/view/widget/send_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class AdminChatWithUs extends StatefulWidget {
  @override
  State<AdminChatWithUs> createState() => _AdminChatWithUsState();
}

class _AdminChatWithUsState extends State<AdminChatWithUs> {
  List<Map<String, dynamic>> chat = [
    {
      'isMe': true,
      'msg': 'Really!',
      'otherUserName': 'Marley Calzoni',
      'otherUserImg': dummyImg,
      'msgTime': '3:53 PM',
      'haveTaskBubble': false,
      'haveMention': false,
      'mentionPerson': '',
      'taskDetail': {},
    },
    {
      'isMe': false,
      'msg': 'Yes',
      'otherUserName': 'Marley Calzoni',
      'otherUserImg': dummyImg,
      'msgTime': '3:53 PM',
      'haveTaskBubble': false,
      'haveMention': false,
      'mentionPerson': '',
      'taskDetail': {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        bgColor: kSecondaryColor,
        title: 'Chat with us',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: chat.length,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(15, 60, 15, 100),
                        itemBuilder: (context, index) {
                          var data = chat[index];
                          return ChatBubble(
                            isMe: data['isMe'],
                            myImg: dummyImg,
                            msg: data['msg'],
                            otherUserImg: data['otherUserImg'],
                            otherUserName: data['otherUserName'],
                            msgTime: data['msgTime'],
                            haveTaskBubble: data['haveTaskBubble'],
                            haveMention: data['haveMention'],
                            mentionPerson: data['mentionPerson'],
                            likeCount: 1.0,
                            loveCount: 1.0,
                            onLikeTap: () {},
                            onLoveTap: () {},
                            onEmojiTap: () {},
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SendField(
                  onAttachmentTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                        ),
                      ),
                      builder: (_) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: SizedBox(
                            height: 280,
                            child: Padding(
                              padding: DEFAULT_PADDING,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleSendField(),
                                  Wrap(
                                    spacing: 20,
                                    runSpacing: 15,
                                    children: [
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesCamera,
                                        title: 'Camera',
                                        color1: Color(0xff1575F5),
                                        color2: Color(0xff1575F5),
                                      ),
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesGallery,
                                        title: 'Gallery',
                                        color1: Color(0xffAB53B9),
                                        color2: Color(0xffBF59CF),
                                      ),
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesFile,
                                        title: 'File',
                                        color1: Color(0xff5F66CD),
                                        color2: Color(0xff6971E0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
