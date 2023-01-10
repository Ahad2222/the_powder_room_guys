import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class MemberUpdatePass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Change Password',
      ),
      body: Padding(
        padding: DEFAULT_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyTextField(
              label: 'Password',
              hintText: '***************',
            ),
            MyTextField(
              label: 'Confirm password',
              hintText: '***************',
              marginBottom: 24,
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
