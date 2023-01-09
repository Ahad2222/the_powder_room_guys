import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';

Padding noMeetingEmptyState({
  VoidCallback? onJoinMeeting,
}) {
  return Padding(
    padding: DEFAULT_PADDING,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyButton(
          buttonText: '+  Join Meeting',
          onTap: onJoinMeeting!,
          textSize: 14,
        ),
        Image.asset(
          Assets.imagesNoMeetingEmptyState,
          height: 217,
        ),
        SizedBox(),
      ],
    ),
  );
}
