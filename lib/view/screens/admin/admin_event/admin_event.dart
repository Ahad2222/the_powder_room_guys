import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/admin_events_tabs/a_events.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/admin_events_tabs/a_tasks.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/create_new_event.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/create_new_task.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_toggle_button.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';

class AdminEvent extends StatefulWidget {
  @override
  State<AdminEvent> createState() => _AdminEventState();
}

class _AdminEventState extends State<AdminEvent> {
  int _currentTab = 0;

  void getCurrentTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  List<Widget> _tabs = [
    AEvents(),
    ATasks(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        centerTitle: true,
        backgroundColor: kSecondaryColor,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: CommonImageView(
                height: 40,
                width: 40,
                radius: 100.0,
                url: dummyImg,
              ),
            ),
          ],
        ),
        title: Image.asset(
          Assets.imagesLogoPlaceHolder,
          height: 17.26,
        ),
        actions: [
          Center(
            child: MyText(
              onTap: () {
                _currentTab == 0
                    ? Get.to(() => CreateNewEvent())
                    : Get.to(() => CreateNewTask());
              },
              text: 'Add new',
              size: 14,
              color: kTertiaryColor,
              fontFamily: POPPINS,
              weight: FontWeight.w600,
              paddingRight: 20,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Row(
              children: [
                Expanded(
                  child: MyToggleButtons(
                    text: 'Event',
                    isSelected: _currentTab == 0,
                    onTap: () => getCurrentTab(0),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: MyToggleButtons(
                    text: 'Task',
                    isSelected: _currentTab == 1,
                    onTap: () => getCurrentTab(1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: _currentTab,
              children: _tabs,
            ),
          ),
        ],
      ),
    );
  }
}
