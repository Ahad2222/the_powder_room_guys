import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_chat/add_more_members.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class ViewMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        bgColor: kSecondaryColor,
        title: 'Add member',
        haveActionText: true,
        actionText: 'Add more',
        onActionTextTap: () => Get.to(() => AddMoreMembers()),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return MemberTile(
            url: dummyImg,
            name: 'Josiah Zayner',
            role: 'Employee',
            onDelete: () {},
          );
        },
      ),
    );
  }
}

class MemberTile extends StatelessWidget {
  const MemberTile({
    Key? key,
    required this.url,
    required this.name,
    required this.role,
    required this.onDelete,
  }) : super(key: key);

  final String url, name, role;

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            CommonImageView(
              height: 40,
              width: 40,
              radius: 100.0,
              url: url,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyText(
                    paddingLeft: 8,
                    text: name,
                    size: 14,
                    color: kGrey10Color,
                  ),
                  MyText(
                    paddingTop: 4,
                    paddingLeft: 8,
                    text: role,
                    size: 12,
                    color: kGrey8Color,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: onDelete,
              child: Image.asset(
                Assets.imagesDelete,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
