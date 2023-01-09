import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
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
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    Assets.imagesVideoCall,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      Assets.imagesAudioCall,
                      height: 20,
                    ),
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
                            height: 200,
                            child: Padding(
                              padding: DEFAULT_PADDING,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SimpleSendField(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        icon: Assets.imagesGif,
                                        title: 'Gifs',
                                        color1: Color(0xffEC407A),
                                        color2: Color(0xffFF4483),
                                      ),
                                      AttachmentButton(
                                        onTap: () {},
                                        icon: Assets.imagesNote,
                                        title: 'New note',
                                        color1: Color(0xff1575F5),
                                        color2: Color(0xff1575F5),
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
}

class AttachmentButton extends StatelessWidget {
  const AttachmentButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.onTap,
  }) : super(key: key);
  final String title, icon;
  final Color color1, color2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5,
                0.5,
              ],
              colors: [
                color1,
                color2,
              ],
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(100),
              splashColor: kSecondaryColor.withOpacity(0.1),
              highlightColor: kSecondaryColor.withOpacity(0.1),
              child: Center(
                child: Image.asset(
                  icon,
                  height: 24,
                ),
              ),
            ),
          ),
        ),
        MyText(
          paddingTop: 8,
          text: title,
          size: 10,
          fontFamily: POPPINS,
          color: kGrey8Color,
        ),
      ],
    );
  }
}
