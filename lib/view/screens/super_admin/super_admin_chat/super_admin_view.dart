import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_toggle_button.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

class SuperAdminView extends StatelessWidget {
  SuperAdminView({
    required this.currentIndex,
  });

  final List<String> tabs = [
    'Files',
    'Task',
    'Event',
    'Notes',
    'Pinned',
    'Members',
  ];

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: 'Team name 01',
        bgColor: kSecondaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                horizontal: 7,
              ),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: tabs.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: MyToggleButtons(
                        onTap: () {},
                        text: tabs[index],
                        isSelected: index == currentIndex ? true : false,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 16,
                top: 5,
              ),
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyText(
                      text: 'Today',
                      size: 12,
                      weight: FontWeight.w500,
                      fontFamily: POPPINS,
                      color: kGrey8Color,
                      paddingBottom: 8,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: BouncingScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              CommonImageView(
                                height: 50,
                                width: 50,
                                radius: 5.0,
                                url: dummyImg3,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    MyText(
                                      text: 'Camera.jpg',
                                      size: 14,
                                      color: kGrey10Color,
                                      fontFamily: POPPINS,
                                    ),
                                    Row(
                                      children: [
                                        CommonImageView(
                                          height: 20,
                                          width: 20,
                                          radius: 100.0,
                                          url: dummyImg4,
                                        ),
                                        Expanded(
                                          child: MyText(
                                            paddingLeft: 4,
                                            text: 'Kierra Septimus',
                                            size: 10,
                                            fontFamily: POPPINS,
                                            color: kGrey10Color,
                                          ),
                                        ),
                                        MyText(
                                          text: '6.9 MB',
                                          size: 10,
                                          color: kGrey5Color,
                                          fontFamily: POPPINS,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
