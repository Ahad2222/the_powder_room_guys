import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_meeting/admin_join_meeting.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_meeting/create_schedule_meeting.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_notifications/admin_mention.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_notifications/admin_notifications.dart';
import 'package:the_powder_room_guys/view/screens/member/member_meeting/member_join_meeting.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/log_tile.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';
import 'package:timelines/timelines.dart';

class AdminMeeting extends StatefulWidget {
  @override
  State<AdminMeeting> createState() => _AdminMeetingState();
}

class _AdminMeetingState extends State<AdminMeeting> {
  bool showMeetingsLog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            appBar(),
          ];
        },
        body: ListView(
          shrinkWrap: true,
          padding: DEFAULT_PADDING,
          physics: BouncingScrollPhysics(),
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
                      date: 'Oct 12',
                      title: 'Team meeting',
                      duration: '08:00am - 09:00am',
                    );
                  } else if (index == 6 || index == 7) {
                    return TimeLineTile(
                      date: 'Oct 12',
                      title: 'Team meeting',
                      duration: '08:00am - 09:00am',
                    );
                  } else {
                    return MyText(
                      paddingLeft: 10,
                      text: 'Oct 12',
                      size: 10,
                      fontFamily: POPPINS,
                      weight: FontWeight.w500,
                      color:
                          index == 0 || index == 1 || index == 6 || index == 7
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
      ),
    );
  }

  SliverAppBar appBar() {
    return SliverAppBar(
      backgroundColor: kSecondaryColor,
      elevation: 2,
      pinned: true,
      centerTitle: true,
      expandedHeight: 175,
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
                  onTap: () => Get.to(() => AdminMention()),
                  child: Image.asset(
                    Assets.imagesMention,
                    height: 24,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(() => AdminNotifications()),
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
        background: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.imagesNewMeeting,
                          height: 60,
                        ),
                        MyText(
                          paddingTop: 8,
                          text: 'New Meeting',
                          size: 12,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => AdminJoinMeeting()),
                      child: Column(
                        children: [
                          Image.asset(
                            Assets.imagesJoinMeeting,
                            height: 60,
                          ),
                          MyText(
                            paddingTop: 8,
                            text: 'Join Meeting',
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => CreateScheduleMeeting()),
                      child: Column(
                        children: [
                          Image.asset(
                            Assets.imagesSchedule,
                            height: 60,
                          ),
                          MyText(
                            paddingTop: 8,
                            text: 'Schedule',
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Padding noMeetingEmptyState({
  VoidCallback? onJoinMeeting,
}) {
  return Padding(
    padding: DEFAULT_PADDING,
    child: Center(
      child: Image.asset(
        Assets.imagesNoMeetingEmptyState,
        height: 217,
      ),
    ),
  );
}
