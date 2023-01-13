import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class AdminChangeName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Profile name',
      ),
      body: Padding(
        padding: DEFAULT_PADDING,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
