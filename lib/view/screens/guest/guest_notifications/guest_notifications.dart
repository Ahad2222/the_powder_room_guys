import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/notification_tile.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Notifications',
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return NotificationTiles(
            avatarUrl: dummyImg4,
            title: index == 0 ? 'Jonny Dev' : 'Duseca Software',
            notificationText: index == 0
                ? ' mention you.'
                : index == 1
                    ? 'join your team'
                    : 'you blocked him',
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
