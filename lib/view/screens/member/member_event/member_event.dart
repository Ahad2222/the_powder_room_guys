import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_events_tabs/m_events.dart';
import 'package:the_powder_room_guys/view/widget/my_toggle_button.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';

class MemberEvent extends StatefulWidget {
  @override
  State<MemberEvent> createState() => _MemberEventState();
}

class _MemberEventState extends State<MemberEvent> {
  int _currentTab = 0;

  void getCurrentTab(int index) {
    setState(() {
      _currentTab = index;
    });
  }

  List<Widget> _tabs = [
    MEvents(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileImageAppBar(
        imgUrl: dummyImg3,
        onMention: () {},
        onNotification: () {},
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
