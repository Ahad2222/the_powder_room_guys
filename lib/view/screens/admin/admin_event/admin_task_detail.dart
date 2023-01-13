import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/admin_task_detail_tabs/a_task_chat.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_event/admin_task_detail_tabs/a_task_detail.dart';
import 'package:the_powder_room_guys/view/widget/my_toggle_button.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class AdminTaskDetail extends StatefulWidget {
  @override
  State<AdminTaskDetail> createState() => _AdminTaskDetailState();
}

class _AdminTaskDetailState extends State<AdminTaskDetail> {
  int _currentTab = 0;

  void getCurrentTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  List<Widget> _tabs = [
    ATaskDetail(),
    ATaskChat(),
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
