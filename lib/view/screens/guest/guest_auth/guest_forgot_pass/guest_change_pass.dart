import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestChangePass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Change Password',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          MyTextField(
            label: 'Password',
            hintText: '******************',
            isObSecure: true,
          ),
          MyTextField(
            label: 'Confirm password',
            hintText: '******************',
            isObSecure: true,
            marginBottom: 40,
          ),
          MyButton(
            buttonText: 'Submit',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
