import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class NotificationTiles extends StatelessWidget {
  NotificationTiles({
    Key? key,
    required this.title,
    required this.notificationText,
    required this.time,
    this.isNewNotification = false,
    required this.avatarUrl,
    required this.onTap,
    required this.day,
    required this.notificationCount,
  }) : super(key: key);

  final String day, avatarUrl, title, notificationText, time;
  final int notificationCount;
  bool? isNewNotification;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyText(
          paddingLeft: 20,
          paddingTop: 8,
          paddingBottom: 8,
          text: day,
          fontFamily: POPPINS,
          weight: FontWeight.w600,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            notificationCount,
            (index) {
              return Material(
                color: isNewNotification! ? kSecondaryColor : kPrimaryColor,
                child: ListTile(
                  onTap: onTap,
                  leading: CommonImageView(
                    height: 50,
                    width: 50,
                    url: avatarUrl,
                    radius: 100.0,
                  ),
                  title: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontFamily: POPPINS,
                      ),
                      children: [
                        TextSpan(
                          text: title,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: kGrey10Color,
                          ),
                        ),
                        TextSpan(
                          text: ' $notificationText',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey10Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: MyText(
                    paddingTop: 7,
                    text: time,
                    size: 10,
                    color: kGrey7Color,
                    // color: kGreyColor,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
