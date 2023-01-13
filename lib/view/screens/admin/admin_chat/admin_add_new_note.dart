import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class AdminAddNewNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'New note',
        haveActionText: true,
        actionText: 'Save',
        onActionTextTap: () {},
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          MyTextField(
            label: 'Title',
            hintText: 'Type here',
            marginBottom: 16,
          ),
          MyTextField(
            label: 'Content',
            hintText: 'Type here',
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
