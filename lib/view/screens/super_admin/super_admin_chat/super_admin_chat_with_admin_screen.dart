import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/member/member_chat/member_add_new_note.dart';
import 'package:the_powder_room_guys/view/screens/member/member_chat/member_view.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/super_admin_chat/super_admin_view.dart';
import 'package:the_powder_room_guys/view/widget/attachment_button.dart';
import 'package:the_powder_room_guys/view/widget/chat_bubbles.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/send_field.dart';

class SuperAdminChatWithAdminScreen extends StatefulWidget {
  @override
  State<SuperAdminChatWithAdminScreen> createState() =>
      _SuperAdminChatWithAdminScreenState();
}

class _SuperAdminChatWithAdminScreenState
    extends State<SuperAdminChatWithAdminScreen> {
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
                    text: 'Jerry Helfer',
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
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    Assets.imagesVideoCall,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16,right: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      Assets.imagesAudioCall,
                      height: 20,
                    ),
                  ),
                ),
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
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesEvent,
                                        title: 'Event',
                                        color1: Color(0xffEC407A),
                                        color2: Color(0xffFF4483),
                                      ),
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesNewTask,
                                        title: 'New task',
                                        color1: Color(0xffEC407A),
                                        color2: Color(0xffFF4483),
                                      ),
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesGif,
                                        title: 'Gifs',
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
