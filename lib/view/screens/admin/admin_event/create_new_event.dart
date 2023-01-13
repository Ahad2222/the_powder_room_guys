import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/custom_drop_down.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class CreateNewEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        bgColor: kSecondaryColor,
        title: 'Create new event',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: DEFAULT_PADDING,
              children: [
                MyTextField(
                  label: 'Event name',
                  hintText: 'Type here',
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        label: 'Start date',
                        hintText: 'Today',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MyTextField(
                        label: 'Start time',
                        hintText: 'Now',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        label: 'End date',
                        hintText: '25/01/2023',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: MyTextField(
                        label: 'Start time',
                        hintText: '09:00 am',
                      ),
                    ),
                  ],
                ),
                CustomDropDown(
                  heading: 'Repeat',
                  items: [
                    'Never',
                  ],
                  onChanged: (v) {},
                ),
                MyText(
                  text: 'Add attachment',
                  fontFamily: SF_UI_COMPACT,
                  size: 12,
                  weight: FontWeight.w500,
                  paddingBottom: 4,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1.0,
                      color: kGrey2Color,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.imagesUploadHere,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: MyButton(
              buttonText: 'Create',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
