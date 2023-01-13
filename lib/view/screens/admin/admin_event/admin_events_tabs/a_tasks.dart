import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/helper/sizes_constant.dart';
import 'package:the_powder_room_guys/view/screens/member/member_event/member_task_detail.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';

class ATasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: DEFAULT_PADDING,
      physics: BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyText(
              text: 'Today',
              size: 12,
              weight: FontWeight.w500,
              color: kGrey8Color,
              paddingBottom: 8,
              paddingTop: index == 0 ? 0 : 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                3,
                (index) {
                  return TaskTile(
                    onTap: () => Get.to(() => MemberTaskDetail()),
                    title: 'Mobile App Design',
                    completionPercentage: index == 0
                        ? 50
                        : index == 1
                            ? 100
                            : 20,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

// ignore: must_be_immutable
class TaskTile extends StatelessWidget {
  TaskTile({
    Key? key,
    this.completionPercentage,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String? title;
  VoidCallback? onTap;
  int? completionPercentage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
