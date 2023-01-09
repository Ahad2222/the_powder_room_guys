import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class GuestJoinMeeting extends StatefulWidget {
  @override
  State<GuestJoinMeeting> createState() => _GuestJoinMeetingState();
}

class _GuestJoinMeetingState extends State<GuestJoinMeeting> {
  int currentIndex = 0;

  List<Map<String, dynamic>> items = [
    {
      'icon': Assets.imagesMute,
      'title': 'Mute',
    },
    {
      'icon': Assets.imagesVideoOff,
      'title': 'Video off',
    },
    {
      'icon': Assets.imagesParticipants,
      'title': 'Participants',
    },
    {
      'icon': Assets.imagesMChats,
      'title': 'Chat',
    },
  ];

  final List<Widget> screens = [
    Container(),
    videoCall(),
    participants(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kTextColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Image.asset(
            Assets.imagesArrowBack,
            height: 24,
            color: kSecondaryColor,
          ),
        ),
        title: currentIndex == 2
            ? MyText(
                text: '3 participants',
                color: kSecondaryColor,
                size: 14,
                fontFamily: POPPINS,
                weight: FontWeight.w600,
                paddingRight: 20,
              )
            : null,
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 32,
              width: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: kRedColor,
              ),
              child: Center(
                child: MyText(
                  text: 'End',
                  weight: FontWeight.w700,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        children: screens,
        index: currentIndex,
      ),
      bottomNavigationBar: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: kTextColor,
          onTap: (index) {
            index == 0
                ? () {}
                : setState(() {
                    currentIndex = index;
                  });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            color: kSecondaryColor,
            fontFamily: POPPINS,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            color: kGrey5Color,
            fontFamily: POPPINS,
          ),
          selectedItemColor: kSecondaryColor,
          unselectedItemColor: kGrey5Color,
          items: List.generate(
            items.length,
            (index) {
              return BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: ImageIcon(
                    AssetImage(
                      items[index]['icon'],
                    ),
                    size: 24,
                  ),
                ),
                label: items[index]['title'],
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget videoCall() {
  return CommonImageView(
    height: Get.height,
    width: Get.width,
    radius: 0.0,
    url: dummyImg3,
  );
}

Widget participants() {
  return ListView.builder(
    shrinkWrap: true,
    padding: DEFAULT_PADDING,
    itemCount: 3,
    physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          children: [
            CommonImageView(
              height: 40,
              width: 40,
              radius: 100.0,
              url: dummyImg3,
            ),
            Expanded(
              child: MyText(
                paddingLeft: 8,
                text: 'Josiah Zayner',
                size: 14,
                color: kGrey10Color,
                fontFamily: POPPINS,
              ),
            ),
            Wrap(
              spacing: 16,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesMute,
                  height: 24,
                  color: kTextColor,
                ),
                Image.asset(
                  Assets.imagesVideoOff,
                  height: 24,
                  color: kTextColor,
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
