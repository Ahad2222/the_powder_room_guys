import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_switch_tile.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberNotificationSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Notification settings',
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: DEFAULT_PADDING,
        children: [
          MySwitchTile(
            title: 'Push Notifications',
            value: false,
            onToggle: (value) {},
          ),
          MySwitchTile(
            title: 'Email Notifications',
            value: false,
            onToggle: (value) {},
          ),
          MySwitchTile(
            title: 'Text Notifications',
            value: false,
            onToggle: (value) {},
          ),
        ],
      ),
    );
  }
}
