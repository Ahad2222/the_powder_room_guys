import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class MyToggleButtons extends StatelessWidget {
  MyToggleButtons({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isSelected ? kTertiaryColor : kPrimaryColor,
        border: Border.all(
          width: 1.0,
          color: isSelected ? kTertiaryColor : kGrey1Color,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 10,
                  color: kTertiaryColor.withOpacity(0.3),
                ),
              ]
            : [],
      ),
      child: MyText(
        text: text,
        size: 12,
        color: isSelected ? kSecondaryColor : kGrey8Color,
      ),
    );
  }
}
