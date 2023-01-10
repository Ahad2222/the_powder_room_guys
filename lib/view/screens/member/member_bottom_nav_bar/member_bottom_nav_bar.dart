import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/member/member_chat/member_chat_head.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_event.dart';
import 'package:the_powder_room_guys/view/screens/member/member_meeting/member_meeting.dart';
import 'package:the_powder_room_guys/view/screens/member/member_profile/profile.dart';

class MemberBottomNavBar extends StatefulWidget {
  @override
  State<MemberBottomNavBar> createState() => _MemberBottomNavBarState();
}

class _MemberBottomNavBarState extends State<MemberBottomNavBar> {
  List<String> items = [
    Assets.imagesChat,
    Assets.imagesVideo,
    Assets.imagesCalendar,
    Assets.imagesProfile,
  ];

  int currentIndex = 0;

  final List<Widget> screens = [
    MemberChatHead(),
    MemberMeeting(),
    MemberEvent(),
    MemberProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: kSecondaryColor,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: kTertiaryColor,
        unselectedItemColor: kGrey8Color,
        items: List.generate(
          items.length,
          (index) {
            return BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  items[index],
                ),
                size: 20,
              ),
              label: '',
            );
          },
        ),
      ),
    );
  }
}
