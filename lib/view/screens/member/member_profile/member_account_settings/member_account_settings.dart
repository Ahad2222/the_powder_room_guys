import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberAccountSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Account settings',
      ),
      body: Padding(
        padding: DEFAULT_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CommonImageView(
                    height: 80,
                    width: 80,
                    radius: 100.0,
                    url: dummyImg4,
                  ),
                  Image.asset(
                    Assets.imagesAddProfileImage,
                    height: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MyTextField(
              label: 'Profile name',
              hintText: 'Raju Mullah',
            ),
            SizedBox(
              height: 40,
            ),
            MyButton(
              buttonText: 'Save',
              textSize: 14,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
