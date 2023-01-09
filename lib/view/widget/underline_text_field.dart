import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';

class UnderlineTextField extends StatelessWidget {
  UnderlineTextField({
    Key? key,
    this.controller,
    this.hintText,
  }) : super(key: key);

  String? hintText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontSize: 14,
        color: kBlackColor,
        fontFamily: SF_UI_DISPLAY,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kGrey2Color,
            width: 1.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kGrey2Color,
            width: 1.0,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: kGrey3Color,
          fontFamily: SF_UI_DISPLAY,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
