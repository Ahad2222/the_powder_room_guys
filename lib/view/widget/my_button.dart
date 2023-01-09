import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    required this.buttonText,
    required this.onTap,
    this.height = 56,
    this.textSize,
  });

  final String buttonText;
  final VoidCallback onTap;
  double? height,textSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 8),
            color: kTertiaryColor.withOpacity(0.25),
            blurRadius: 15,
            spreadRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.circular(50),
        color: kTertiaryColor,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: kSecondaryColor.withOpacity(0.1),
          highlightColor: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
          child: Center(
            child: MyText(
              text: buttonText,
              size: textSize ?? 17,
              fontFamily: 'sf_ui_display',
              weight: FontWeight.w700,
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
