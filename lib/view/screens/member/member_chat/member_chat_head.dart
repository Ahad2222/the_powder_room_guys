import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_notifications/guest_mentions.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_notifications/guest_notifications.dart';
import 'package:the_powder_room_guys/view/screens/member/member_chat/member_chat_screen.dart';
import 'package:the_powder_room_guys/view/screens/member/member_notifications/member_mentions.dart';
import 'package:the_powder_room_guys/view/screens/member/member_notifications/member_notifications.dart';
import 'package:the_powder_room_guys/view/widget/chat_head_tile.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/search_bar.dart';

class MemberChatHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            chatHeadAppBar(),
          ];
        },
        body: ListView.builder(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ChatHeadTiles(
              profileImage: dummyImg,
              name: 'Josiah Zayner',
              lastMsg: 'How are you today?',
              time: '9.56 AM',
              unreadCount: index == 2 ? 3 : 0,
              isSeen: index == 0 ? true : false,
              onTap: () => Get.to(
                () => MemberChatScreen(),
              ),
            );
          },
        ),
      ),
    );
  }

  SliverAppBar chatHeadAppBar() {
    return SliverAppBar(
      elevation: 2,
      pinned: true,
      centerTitle: true,
      expandedHeight: 140,
      leadingWidth: 70,
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
              url: dummyImg3,
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
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Wrap(
              spacing: 12,
              children: [
                GestureDetector(
                  onTap: () => Get.to(() => MemberMention()),
                  child: Image.asset(
                    Assets.imagesMention,
                    height: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(() => MemberNotifications()),
                  child: Image.asset(
                    Assets.imagesNotificationBell,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
