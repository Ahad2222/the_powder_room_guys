import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class TagPerson extends StatelessWidget {
  final String name, img;
  final VoidCallback onRemove;

  const TagPerson({
  super.key,
  required this.name,
  required this.img,
  required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 89,
      decoration: BoxDecoration(
        color: kGrey1Color,
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 4,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonImageView(
            height: 20,
            width: 20,
            radius: 100.0,
            url: img,
          ),
          Expanded(
            child: MyText(
              paddingLeft: 8,
              maxLines: 1,
              overFlow: TextOverflow.ellipsis,
              text: name,
              size: 10,
              color: kGrey10Color,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 4,
            ),
            child: GestureDetector(
              onTap: onRemove,
              child: Image.asset(
                Assets.imagesRemove,
                height: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
