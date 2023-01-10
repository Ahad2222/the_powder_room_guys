import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/notification_tile.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberMention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Mention',
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return NotificationTiles(
            avatarUrl: dummyImg4,
            title: 'Nadia Akter',
            notificationText: ' mention you.',
            time: '34m ago',
            isNewNotification: index == 0 ? true : false,
            notificationCount: 3,
            day: index == 0 ? 'Today' : 'Yesterday',
            onTap: () {},
          );
        },
      ),
    );
  }
}
