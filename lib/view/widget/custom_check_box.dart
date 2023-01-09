import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    Key? key,
    required this.isActive,
    required this.onTap,
    this.unSelectedColor,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback onTap;
  Color? unSelectedColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 230,
        ),
        curve: Curves.easeInOut,
        height: 19,
        width: 19,
        decoration: BoxDecoration(
          color: isActive ? kTextColor : kPrimaryColor,
          border: Border.all(
            width: 1.0,
            color: unSelectedColor ?? kTextColor,
          ),
          borderRadius: BorderRadius.circular(3.3),
        ),
        child: !isActive
            ? SizedBox()
            : Icon(
          Icons.check,
          size: 16,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
