import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class TimeLineTile extends StatelessWidget {
  TimeLineTile({
    Key? key,
    this.date,
    this.duration,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String? date, title, duration;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyText(
              paddingLeft: 5,
              text: '$date',
              size: 10,
              weight: FontWeight.w500,
              color: kTextColor,
              paddingBottom: 10,
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 8,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kBlackColor.withOpacity(0.10),
                    blurRadius: 15,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: '$title',
                    size: 12,
                    weight: FontWeight.w500,
                    fontFamily: POPPINS,
                  ),
                  MyText(
                    paddingTop: 4,
                    text: duration,
                    size: 12,
                    fontFamily: POPPINS,
                    color: kGrey8Color,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}