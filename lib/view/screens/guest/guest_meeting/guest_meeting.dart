import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_meeting/guest_join_meeting.dart';
import 'package:the_powder_room_guys/view/widget/log_tile.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/not_meeting_empty_state.dart';
import 'package:the_powder_room_guys/view/widget/profiel_image_app_bar.dart';
import 'package:timelines/timelines.dart';

class GuestMeeting extends StatefulWidget {
  @override
  State<GuestMeeting> createState() => _GuestMeetingState();
}

class _GuestMeetingState extends State<GuestMeeting> {
  bool showMeetingsLog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileImageAppBar(
        imgUrl: dummyImg3,
        onMention: () {},
        onNotification: () {},
      ),
      body: showMeetingsLog
          ? Padding(
              padding: DEFAULT_PADDING,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MyButton(
                    buttonText: '+  Join Meeting',
                    onTap: () => Get.to(() => GuestJoinMeeting()),
                    textSize: 14,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
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
                                  color: index == 0 ||
                                          index == 1 ||
                                          index == 6 ||
                                          index == 7
                                      ? kTextColor
                                      : kGrey3Color,
                                  paddingBottom: 10,
                                );
                              }
                            },
                            indicatorBuilder: (context, index) {
                              return DotIndicator(
                                size: 10.0,
                                color: index == 0 ||
                                        index == 1 ||
                                        index == 6 ||
                                        index == 7
                                    ? kTextColor
                                    : kGrey3Color,
                              );
                            },
                            indicatorPositionBuilder: (context, index) {
                              return 0.01;
                            },
                            startConnectorBuilder: (_, index) =>
                                Connector.dashedLine(
                              dash: 3.0,
                              gap: 1.0,
                              color:
                                  index == 0 ? Colors.transparent : kGrey3Color,
                            ),
                            endConnectorBuilder: (_, index) =>
                                Connector.dashedLine(
                              dash: 3.0,
                              gap: 1.0,
                              color: kGrey3Color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : noMeetingEmptyState(
              onJoinMeeting: () {
                setState(() {
                  showMeetingsLog = true;
                });
              },
            ),
    );
  }
}
