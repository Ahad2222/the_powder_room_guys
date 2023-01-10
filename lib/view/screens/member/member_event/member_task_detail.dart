import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_events_tabs/m_events.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_events_tabs/m_tasks.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_task_detail_tabs/m_task_chat.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_task_detail_tabs/m_task_detail.dart';
import 'package:the_powder_room_guys/view/widget/my_toggle_button.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberTaskDetail extends StatefulWidget {
  @override
  State<MemberTaskDetail> createState() => _MemberTaskDetailState();
}

class _MemberTaskDetailState extends State<MemberTaskDetail> {
  int _currentTab = 0;

  void getCurrentTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  List<Widget> _tabs = [
    MTaskDetail(),
    MTaskChat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Task details',
        bgColor: kSecondaryColor,
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
                    text: 'Details',
                    isSelected: _currentTab == 0,
                    onTap: () => getCurrentTab(0),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: MyToggleButtons(
                    text: 'Message',
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
