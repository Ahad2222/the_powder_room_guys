import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class GuestEventDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Event details',
        bgColor: kSecondaryColor,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: DEFAULT_PADDING,
        children: [
          MyText(
            text: 'Mobile App Design',
            weight: FontWeight.w600,
            fontFamily: POPPINS,
          ),
          MyText(
            paddingTop: 4,
            text: '08:00am - until 25-01-2023; 09:00am',
            color: kGrey8Color,
            fontFamily: POPPINS,
            paddingBottom: 16,
          ),
          MyText(
            text: 'Attachment',
            weight: FontWeight.w600,
            fontFamily: POPPINS,
            paddingBottom: 13,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Row(
                  children: [
                    index == 0
                        ? CommonImageView(
                            height: 32,
                            width: 32,
                            radius: 5.0,
                            url: dummyImg3,
                          )
                        : CommonImageView(
                            height: 32,
                            width: 32,
                            radius: 5.0,
                            imagePath: Assets.imagesDoc,
                          ),
                    Expanded(
                      child: MyText(
                        paddingLeft: 8,
                        text: index == 0 ? 'Camera.jpg' : 'Document.pdf',
                        size: 12,
                        color: kGrey10Color,
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
