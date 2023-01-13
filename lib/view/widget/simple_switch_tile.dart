import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class SimpleSwitchTile extends StatelessWidget {
  const SimpleSwitchTile({
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
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: title,
            fontFamily: POPPINS,
            size: 12,
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
    );
  }
}