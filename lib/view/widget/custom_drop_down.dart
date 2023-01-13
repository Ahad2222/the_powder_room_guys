import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({
    required this.heading,
    required this.items,
    this.selectedValue,
    required this.onChanged,
  });

  final List<dynamic>? items;
  String? selectedValue;
  final ValueChanged<dynamic>? onChanged;
  String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyText(
            text: heading,
            fontFamily: SF_UI_COMPACT,
            size: 12,
            weight: FontWeight.w500,
            paddingBottom: 4,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              items: items!
                  .map(
                    (item) => DropdownMenuItem<dynamic>(
                      value: item,
                      child: MyText(
                        text: item,
                        fontFamily: SF_UI_DISPLAY,
                        size: 12,
                        color: kTextColor,
                      ),
                    ),
                  )
                  .toList(),
              value: selectedValue,
              onChanged: onChanged,
              icon: Image.asset(
                Assets.imagesArrowDropDown,
                height: 24,
              ),
              isDense: true,
              isExpanded: true,
              buttonHeight: 48,
              buttonPadding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              buttonDecoration: BoxDecoration(
                border: Border.all(
                  color: kGrey2Color,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor,
              ),
              buttonElevation: 0,
              itemHeight: 40,
              itemPadding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              dropdownMaxHeight: 200,
              dropdownWidth: Get.width * 0.92,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kSecondaryColor,
              ),
              dropdownElevation: 4,
              scrollbarRadius: const Radius.circular(40),
              scrollbarThickness: 6,
              scrollbarAlwaysShow: true,
              offset: const Offset(-2, -5),
            ),
          ),
        ],
      ),
    );
  }
}
