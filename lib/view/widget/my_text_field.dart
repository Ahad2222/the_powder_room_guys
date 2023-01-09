import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.label,
    this.onChanged,
    this.isObSecure = false,
    this.marginBottom = 8.0,
    this.maxLines = 1,
    this.hintColor,
    this.haveLabel = true,
    this.labelSize,
  }) : super(key: key);
  String? label, hintText;

  TextEditingController? controller;
  ValueChanged<String>? onChanged;
  bool? isObSecure, haveLabel;
  double? marginBottom;
  int? maxLines;
  double? labelSize;
  Color? hintColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: marginBottom!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          haveLabel!
              ? MyText(
                  text: label,
                  fontFamily: SF_UI_COMPACT,
                  size: labelSize ?? 12,
                  weight: FontWeight.w500,
                  paddingBottom: 4,
                )
              : SizedBox(),
          TextFormField(
            maxLines: maxLines,
            controller: controller,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
            obscureText: isObSecure!,
            obscuringCharacter: '*',
            style: TextStyle(
              fontFamily: SF_UI_DISPLAY,
              fontSize: 12,
              color: kTextColor,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: maxLines! > 1 ? 15 : 0,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: SF_UI_DISPLAY,
                fontSize: 12,
                color: hintColor ?? kGrey2Color,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kGrey2Color,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kGrey2Color,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
