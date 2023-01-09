import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/chat/chat_head.dart';

class GuestBottomNavBar extends StatefulWidget {
  @override
  State<GuestBottomNavBar> createState() => _GuestBottomNavBarState();
}

class _GuestBottomNavBarState extends State<GuestBottomNavBar> {
  List<String> items = [
    Assets.imagesChat,
    Assets.imagesVideo,
    Assets.imagesCalendar,
    Assets.imagesProfile,
  ];

  int currentIndex = 0;

  final List<Widget> screens = [
    ChatHeads(),
    Container(),
    Container(),
    Container(),
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