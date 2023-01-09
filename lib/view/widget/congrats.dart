import 'package:flutter/material.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/simple_app_bar.dart';

// ignore: must_be_immutable
class Congrats extends StatelessWidget {
  Congrats({
    required this.congratsMsg,
    required this.onContinue,
    this.buttonText,
  });

  String? congratsMsg, buttonText;
  VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
        title: '',
        haveLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesCongrats,
              height: 100,
              color: kTertiaryColor,
            ),
            MyText(
              paddingTop: 40,
              text: 'Congratulations!',
              size: 18,
              color: kTextColor,
              weight: FontWeight.w700,
              align: TextAlign.center,
            ),
            MyText(
              paddingTop: 8,
              paddingBottom: 40,
              text: congratsMsg,
              size: 14,
              color: kGrey10Color,
              weight: FontWeight.w400,
              align: TextAlign.center,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1.0,
                  color: kTertiaryColor,
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onContinue,
                  splashColor: kTertiaryColor.withOpacity(0.1),
                  highlightColor: kTertiaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                  child: Center(
                    child: MyText(
                      size: 14,
                      weight: FontWeight.w700,
                      color: kTertiaryColor,
                      text: buttonText ?? 'Continue',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
