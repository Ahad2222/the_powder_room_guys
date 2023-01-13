import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_chat/admin_chat_head.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/admin_event.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_meeting/admin_meeting.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_profile.dart';
import 'package:the_powder_room_guys/view/screens/admin/create_team/create_team.dart';
import 'package:the_powder_room_guys/view/screens/member/member_profile/profile.dart';

class AdminBottomNavBar extends StatefulWidget {
  @override
  State<AdminBottomNavBar> createState() => _AdminBottomNavBarState();
}

class _AdminBottomNavBarState extends State<AdminBottomNavBar> {
  List<String> items = [
    Assets.imagesChat,
    Assets.imagesVideo,
    Assets.imagesVideo,
    Assets.imagesCalendar,
    Assets.imagesProfile,
  ];

  int currentIndex = 0;

  final List<Widget> screens = [
    AdminChatHead(),
    AdminMeeting(),
    Container(),
    AdminEvent(),
    AdminProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: kSecondaryColor,
        onTap: (index) {
          index == 2
              ? Get.to(() => CreateTeam())
              : setState(() {
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
              icon: index == 2
                  ? GestureDetector(
                      onTap: () => Get.to(() => CreateTeam()),
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: kTertiaryColor.withOpacity(0.30),
                              offset: Offset(0, 6),
                              blurRadius: 15,
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: kTertiaryColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.imagesPlus,
                            height: 25.2,
                          ),
                        ),
                      ),
                    )
                  : ImageIcon(
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
