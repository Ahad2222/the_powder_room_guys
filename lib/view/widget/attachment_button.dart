import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class AttachmentButton extends StatelessWidget {
  const AttachmentButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.onTap,
  }) : super(key: key);
  final String title, icon;
  final Color color1, color2;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5,
                0.5,
              ],
              colors: [
                color1,
                color2,
              ],
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(100),
              splashColor: kSecondaryColor.withOpacity(0.1),
              highlightColor: kSecondaryColor.withOpacity(0.1),
              child: Center(
                child: Image.asset(
                  icon,
                  height: 24,
                ),
              ),
            ),
          ),
        ),
        MyText(
          paddingTop: 8,
          text: title,
          size: 10,
          fontFamily: POPPINS,
          color: kGrey8Color,
        ),
      ],
    );
  }
}