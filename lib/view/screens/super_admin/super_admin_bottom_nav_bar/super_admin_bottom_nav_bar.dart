import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_profile.dart';
import 'package:the_powder_room_guys/view/screens/admin/create_team/create_team.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/add_admin/add_admin.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/admins/admins.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/super_admin_chat/super_admin_chat_head.dart';

class SuperAdminBottomNavBar extends StatefulWidget {
  @override
  State<SuperAdminBottomNavBar> createState() => _SuperAdminBottomNavBarState();
}

class _SuperAdminBottomNavBarState extends State<SuperAdminBottomNavBar> {
  List<String> items = [
    Assets.imagesChat,
    Assets.imagesVideo,
    Assets.imagesUsers,
  ];

  int currentIndex = 0;

  final List<Widget> screens = [
    SuperAdminChatHead(),
    Container(),
    Admins(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        backgroundColor: kSecondaryColor,
        onTap: (index) {
          index == 1
              ? Get.to(() => AddAdmin())
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
              icon: index == 1
                  ? GestureDetector(
                      onTap: () => Get.to(() => AddAdmin()),
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
