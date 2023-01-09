import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/chat_bubbles.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/send_field.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, dynamic>> chat = [
    {
      'isMe': false,
      'msg': 'Hello, This is Duseca software!',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg2,
      'msgTime': '3:53 PM',
    },
    {
      'isMe': true,
      'msg': 'Hi, Duseca! Welcome to our team',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg,
      'msgTime': '3:53 PM',
    },
    {
      'isMe': false,
      'msg': 'Hello, This is Duseca software!',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg4,
      'msgTime': '3:53 PM',
    },
    {
      'isMe': false,
      'msg': 'Hello, This is Duseca software!',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg3,
      'msgTime': '3:53 PM',
    },
    {
      'isMe': false,
      'msg': 'Hello, This is Duseca software!',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg1,
      'msgTime': '3:53 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        leadingWidth: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset(
                Assets.imagesArrowBack,
                height: 24,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            CommonImageView(
              height: 40,
              width: 40,
              url: dummyImg4,
              radius: 100.0,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    text: 'Jerry Helfer',
                    size: 14,
                    fontFamily: POPPINS,
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    text: 'Online',
                    fontFamily: POPPINS,
                    color: kOnlineGreenColor,
                    size: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesVideoCall,
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Image.asset(
                    Assets.imagesAudioCall,
                    height: 20,
                  ),
                ),
                menuButton(),
              ],
            ),
          ),
        ],
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
                        padding: EdgeInsets.fromLTRB(15, 60, 15, 15),
                        itemBuilder: (context, index) {
                          var data = chat[index];
                          return ChatBubble(
                            isMe: data['isMe'],
                            myImg: dummyImg,
                            msg: data['msg'],
                            otherUserImg: data['otherUserImg'],
                            otherUserName: data['otherUserName'],
                            msgTime: data['msgTime'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                chatSendField(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PopupMenuButton<dynamic> menuButton() {
    return PopupMenuButton(
      elevation: 6,
      constraints: BoxConstraints(
        maxWidth: 140,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      offset: const Offset(-20, 40),
      itemBuilder: (context) {
        return <PopupMenuItem>[
          PopupMenuItem(
            child: MyText(
              text: 'Message admin',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            child: MyText(
              text: 'View task',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            child: MyText(
              text: 'View event',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            child: MyText(
              text: 'View notes',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            child: MyText(
              text: 'View files',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            child: MyText(
              text: 'Pinned',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
        ];
      },
      icon: Image.asset(
        Assets.imagesIconsMoreVert,
        height: 24,
      ),
    );
  }

  Widget chatSendField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 90,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            border: Border(
              top: BorderSide(
                color: kGrey1Color,
                width: 1.0,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SendField(),
            ],
          ),
        ),
      ],
    );
  }
}
