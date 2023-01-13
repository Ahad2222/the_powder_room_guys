import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/super_admin/admins/admin_profile_view.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/search_bar.dart';

class Admins extends StatelessWidget {
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
            return AdminsTile(
              profileImage: dummyImg,
              name: 'Admin Name ${index + 1}',
              companyName: 'Company name',
              time: '9.56 AM',
              onTap: () => Get.to(
                () => AdminsProfileView(),
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
class AdminsTile extends StatelessWidget {
  AdminsTile({
    Key? key,
    required this.profileImage,
    required this.companyName,
    required this.time,
    required this.onTap,
    required this.name,
  }) : super(key: key);

  final String profileImage, name, companyName, time;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
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
          text: name,
          size: 14,
          fontFamily: POPPINS,
          color: kGrey10Color,
          weight: FontWeight.w400,
        ),
        subtitle: MyText(
          text: companyName,
          size: 12,
          fontFamily: POPPINS,
          color: kGrey4Color,
        ),
        trailing: Image.asset(
          Assets.imagesDelete,
          height: 24,
        ),
      ),
    );
  }
}
