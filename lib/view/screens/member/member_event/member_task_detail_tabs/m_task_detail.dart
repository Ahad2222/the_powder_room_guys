import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class MTaskDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      padding: DEFAULT_PADDING,
      children: [
        TaskTile(
          title: 'Mobile App Design',
          time: '25-12-2022; 08:00am - 25-01-2023; 09:00am',
          completionPercentage: 70,
        ),
        MyText(
          paddingTop: 16,
          text: 'Category',
          fontFamily: POPPINS,
          weight: FontWeight.w600,
          paddingBottom: 4,
        ),
        MyText(
          text: 'App design',
          color: kGrey8Color,
          size: 12,
          fontFamily: POPPINS,
        ),
        MyText(
          paddingTop: 16,
          text: 'Assignees',
          fontFamily: POPPINS,
          weight: FontWeight.w600,
          paddingBottom: 8,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  CommonImageView(
                    height: 24,
                    width: 24,
                    radius: 100.0,
                    url: dummyImg3,
                  ),
                  Expanded(
                    child: MyText(
                      paddingLeft: 8,
                      text: 'Mira Franci',
                      size: 12,
                      color: kGrey10Color,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        MyText(
          paddingTop: 16,
          text: 'Description',
          fontFamily: POPPINS,
          weight: FontWeight.w600,
          paddingBottom: 4,
        ),
        MyText(
          text:
              'This is a question that many businesses struggle with, and unfortunately, there is no definitive answer. The mobile app design cost may vary depending on the project\'s scope, the level of complexity involved, and a few other factors. However, an estimated cost to design a mobile app ranges from \$3000 to \$30000.',
          color: kGrey8Color,
          size: 11.5,
          fontFamily: POPPINS,
          height: 2.0,
        ),
        MyText(
          paddingTop: 16,
          text: 'Attachment',
          fontFamily: POPPINS,
          weight: FontWeight.w600,
          paddingBottom: 8,
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
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            Assets.imagesDoc,
                            height: 32,
                            width: 32,
                            color: kTertiaryColor,
                            fit: BoxFit.cover,
                          ),
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
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  TaskTile({
    Key? key,
    this.completionPercentage,
    this.title,
    this.time,
  }) : super(key: key);

  final String? title, time;
  int? completionPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(0.10),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            text: '$title',
            size: 12,
            weight: FontWeight.w500,
            fontFamily: POPPINS,
          ),
          MyText(
            paddingTop: 4,
            text: '$time',
            size: 12,
            fontFamily: POPPINS,
            color: kGrey8Color,
            paddingBottom: 4,
          ),
          MyText(
            text: '$completionPercentage Completed',
            size: 10,
            fontFamily: POPPINS,
            color: kGrey10Color,
            paddingBottom: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: StepProgressIndicator(
              totalSteps: 100,
              currentStep: completionPercentage!,
              size: 3,
              padding: 0,
              selectedColor: completionPercentage! < 50
                  ? kWarningColor
                  : completionPercentage! < 70
                      ? kBlueColor
                      : kSuccessColor,
              unselectedColor: kGrey1Color,
              roundedEdges: Radius.circular(50),
            ),
          ),
        ],
      ),
    );
  }
}
