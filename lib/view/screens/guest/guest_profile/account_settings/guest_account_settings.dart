import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestChangeName extends StatelessWidget {
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
            SizedBox(
              height: 40,
            ),
            MyTextField(
              label: 'Profile name',
              hintText: 'Raju Mullah',
            ),
            SizedBox(
              height: 60,
            ),
            MyButton(
              buttonText: 'Save',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
