import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_event/guest_event_detail.dart';
import 'package:the_powder_room_guys/view/widget/log_tile.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';
import 'package:timelines/timelines.dart';

class GuestEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileImageAppBar(
        imgUrl: dummyImg3,
        onMention: () {},
        onNotification: () {},
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: DEFAULT_PADDING,
        children: [
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
              nodePosition: 0,
              connectorTheme: ConnectorThemeData(
                color: kTextColor,
                thickness: 1.0,
              ),
            ),
            builder: TimelineTileBuilder(
              itemCount: 30,
              contentsBuilder: (_, index) {
                if (index == 0 || index == 1) {
                  return TimeLineTile(
                    onTap: () => Get.to(() => GuestEventDetail()),
                    date: 'Oct 12',
                    title: 'Mobile App Design',
                    duration: '08:00am - until 25-01-2023; 09:00am',
                  );
                } else if (index == 6 || index == 7) {
                  return TimeLineTile(
                    onTap: () => Get.to(() => GuestEventDetail()),
                    date: 'Oct 12',
                    title: 'Mobile App Design',
                    duration: '08:00am - until 25-01-2023; 09:00am',
                  );
                } else {
                  return MyText(
                    paddingLeft: 10,
                    text: 'Oct 12',
                    size: 10,
                    fontFamily: POPPINS,
                    weight: FontWeight.w500,
                    color: index == 0 || index == 1 || index == 6 || index == 7
                        ? kTextColor
                        : kGrey3Color,
                    paddingBottom: 10,
                  );
                }
              },
              indicatorBuilder: (context, index) {
                return DotIndicator(
                  size: 10.0,
                  color: index == 0 || index == 1 || index == 6 || index == 7
                      ? kTextColor
                      : kGrey3Color,
                );
              },
              indicatorPositionBuilder: (context, index) {
                return 0.01;
              },
              startConnectorBuilder: (_, index) => Connector.dashedLine(
                dash: 3.0,
                gap: 1.0,
                color: index == 0 ? Colors.transparent : kGrey3Color,
              ),
              endConnectorBuilder: (_, index) => Connector.dashedLine(
                dash: 3.0,
                gap: 1.0,
                color: kGrey3Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
