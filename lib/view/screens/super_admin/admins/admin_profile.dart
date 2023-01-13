import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/admins/admins_chats_with_team.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/super_admin_chat/super_admin_chat_with_admin_screen.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/search_bar.dart';

class AdminsProfile extends StatelessWidget {
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
            return TeamTile(
              profileImage: dummyImg,
              teamName: 'Team Name ${index + 1}',
              lastMsg: 'How are you today?',
              time: '9.56 AM',
              onTap: () => Get.to(
                () => AdminChatsWithTeams(),
              ),
            );
          },
        ),
      ),
    );
  }

  SliverAppBar chatHeadAppBar() {
    return SliverAppBar(
      backgroundColor: kSecondaryColor,
      elevation: 2,
      pinned: true,
      centerTitle: true,
      expandedHeight: 140,
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: Image.asset(
          Assets.imagesArrowBack,
          height: 24,
        ),
      ),
      title: MyText(
        text: 'Admin Profile',
        size: 16,
        fontFamily: SF_UI_DISPLAY,
        weight: FontWeight.w700,
      ),
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

// ignore: must_be_immutable
class TeamTile extends StatelessWidget {
  TeamTile({
    Key? key,
    required this.profileImage,
    required this.teamName,
    required this.lastMsg,
    required this.time,
    this.isSeen = false,
    required this.onTap,
  }) : super(key: key);

  final String profileImage, teamName, lastMsg, time;
  bool? isSeen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSeen! ? kGrey1Color.withOpacity(0.5) : Colors.transparent,
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        leading: CommonImageView(
          height: 40,
          width: 40,
          url: profileImage,
          fit: BoxFit.cover,
          radius: 100,
        ),
        title: MyText(
          text: teamName,
          size: 14,
          fontFamily: POPPINS,
          color: kGrey10Color,
          weight: FontWeight.w400,
        ),
        subtitle: MyText(
          text: lastMsg,
          size: 12,
          fontFamily: POPPINS,
          color: kGrey4Color,
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              paddingTop: 10,
              text: time,
              size: 12,
              fontFamily: POPPINS,
              color: kGrey4Color,
            ),
          ],
        ),
      ),
    );
  }
}
