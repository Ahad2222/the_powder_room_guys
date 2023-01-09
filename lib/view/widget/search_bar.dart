import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.onTap,
    this.validator,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: TextFormField(
        cursorColor: kBlackColor,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        onTap: onTap,
        onChanged: onChanged,
        validator: validator,
        autovalidateMode: AutovalidateMode.always,
        cursorWidth: 1.0,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: kBlackColor,
          fontFamily: POPPINS,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: kGrey1Color,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: kGrey5Color,
            fontFamily: POPPINS,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          prefixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesSearch,
                height: 16,
              ),
            ],
          ),
          suffixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesMicrophone,
                height: 16,
              ),
            ],
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
