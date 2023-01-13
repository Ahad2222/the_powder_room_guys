import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/member/member_chat/member_view.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/super_admin_chat/super_admin_view.dart';
import 'package:the_powder_room_guys/view/widget/chat_bubbles.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class AdminChatsWithTeams extends StatefulWidget {
  @override
  State<AdminChatsWithTeams> createState() => _AdminChatsWithTeamsState();
}

class _AdminChatsWithTeamsState extends State<AdminChatsWithTeams> {
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
      'msg': 'Yeah, It’s really good!',
      'otherUserName': 'Marley Calzoni',
      'otherUserImg': dummyImg2,
      'msgTime': '3:53 PM',
      'haveTaskBubble': false,
      'haveMention': true,
      'mentionPerson': 'Zaire',
      'taskDetail': {},
    },
    {
      'isMe': false,
      'msg': 'Hi, Duseca! Welcome to our team',
      'otherUserName': 'Duseca software',
      'otherUserImg': dummyImg,
      'msgTime': '3:53 PM',
      'haveTaskBubble': true,
      'haveMention': false,
      'mentionPerson': '',
      'taskDetail': {},
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
                    text: 'Team name 01',
                    size: 14,
                    fontFamily: POPPINS,
                    weight: FontWeight.w600,
                  ),
                  MyText(
                    text: 'Online',
                    fontFamily: POPPINS,
                    color: kSuccessColor,
                    size: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: menuButton(),
          ),
        ],
      ),
      body: ListView.builder(
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
            onTap: () => Get.to(
                  () => SuperAdminView(
                currentIndex: 5,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                    () => SuperAdminView(
                  currentIndex: 5,
                ),
              ),
              text: 'View member',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            onTap: () => Get.to(
              () => SuperAdminView(
                currentIndex: 1,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                () => SuperAdminView(
                  currentIndex: 1,
                ),
              ),
              text: 'View task',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            onTap: () => Get.to(
              () => SuperAdminView(
                currentIndex: 2,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                () => SuperAdminView(
                  currentIndex: 2,
                ),
              ),
              text: 'View event',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            onTap: () => Get.to(
              () => SuperAdminView(
                currentIndex: 3,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                () => SuperAdminView(
                  currentIndex: 3,
                ),
              ),
              text: 'View notes',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            onTap: () => Get.to(
              () => SuperAdminView(
                currentIndex: 0,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                () => SuperAdminView(
                  currentIndex: 0,
                ),
              ),
              text: 'View files',
              size: 12,
              fontFamily: POPPINS,
            ),
          ),
          PopupMenuItem(
            onTap: () => Get.to(
              () => SuperAdminView(
                currentIndex: 4,
              ),
            ),
            child: MyText(
              onTap: () => Get.to(
                () => SuperAdminView(
                  currentIndex: 4,
                ),
              ),
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
}
