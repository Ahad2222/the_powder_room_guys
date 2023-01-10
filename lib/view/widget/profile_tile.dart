import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class ProfileTile extends StatelessWidget {
  ProfileTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.haveNextIcon = true,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback onTap;
  bool? haveNextIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kShadowColor.withOpacity(0.05),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(
                  icon,
                  height: 24,
                ),
                Expanded(
                  child: MyText(
                    paddingLeft: 8,
                    text: title,
                    fontFamily: POPPINS,
                    color: kGrey10Color,
                  ),
                ),
                haveNextIcon!
                    ? Image.asset(
                        Assets.imagesNext,
                        height: 24,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
