import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class MySwitchTile extends StatelessWidget {
  const MySwitchTile({
    Key? key,
    required this.onToggle,
    required this.value,
    required this.title,
  }) : super(key: key);

  final String title;
  final ValueChanged<bool> onToggle;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kShadowColor.withOpacity(0.05),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: title,
              fontFamily: POPPINS,
              color: kGrey10Color,
            ),
            FlutterSwitch(
              width: 33.0,
              height: 18.0,
              toggleSize: 15.5,
              value: value,
              padding: 1.0,
              activeColor: kTertiaryColor,
              inactiveColor: kGrey1Color,
              onToggle: onToggle,
            ),
          ],
        ),
      ),
    );
  }
}
