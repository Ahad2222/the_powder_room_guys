import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_expandable_tile.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestFaq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'FAQ',
      ),
      body: ListView(
        shrinkWrap: true,
        padding: DEFAULT_PADDING,
        physics: BouncingScrollPhysics(),
        children: [
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
          MyExpandableTiles(
            title: 'Sed ultrices nec velit ac porttitor.',
            children: [
              MyExpandableTileItem(
                value:
                    'Etiam quam odio, ultricies eu nulla quis, ultricies fermentum quam.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
