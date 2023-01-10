import 'package:endorsely/constant/color.dart';
import 'package:endorsely/generated/assets.dart';
import 'package:endorsely/main.dart';
import 'package:endorsely/utils/instances.dart';
import 'package:endorsely/view/screens/endorsements/endorsements.dart';
import 'package:endorsely/view/screens/profile/profile_screens/account_settings.dart';
import 'package:endorsely/view/screens/profile/profile_screens/chat_with_us.dart';
import 'package:endorsely/view/screens/profile/profile_screens/faq.dart';
import 'package:endorsely/view/screens/profile/profile_screens/favorite.dart';
import 'package:endorsely/view/screens/profile/profile_screens/notification_settings.dart';
import 'package:endorsely/view/widget/common_image_view.dart';
import 'package:endorsely/view/widget/green_rounded_check.dart';
import 'package:endorsely/view/widget/headings.dart';
import 'package:endorsely/view/widget/my_button.dart';
import 'package:endorsely/view/widget/my_text.dart';
import 'package:endorsely/view/widget/my_text_field.dart';
import 'package:endorsely/view/widget/profile_tile.dart';
import 'package:endorsely/view/widget/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        bool isDark = themeController.isDarkTheme.value;
        return Scaffold(
          backgroundColor: isDark ? kDarkSecondaryColor : kSecondaryColor,
          appBar: AppBar(
            backgroundColor: isDark ? kDarkSecondaryColor : kSecondaryColor,
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: Image.asset(
                Assets.imagesArrowBack,
                height: 24,
                color: themeController.isDarkTheme.value
                    ? kPrimaryColor
                    : kTextColor,
              ),
            ),
            title: MyText(
              text: 'More',
              size: 16,
              weight: FontWeight.w600,
              color: themeController.isDarkTheme.value
                  ? kPrimaryColor
                  : kTextColor,
            ),
            actions: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 8,
                    children: [
                      MyText(
                        text: 'Log out',
                        size: 14,
                        weight: FontWeight.w600,
                        color: kRedColor,
                      ),
                      Image.asset(
                        Assets.imagesLogout,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 120),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Row(
                children: [
                  CommonImageView(
                    height: 60,
                    width: 60,
                    radius: 100.0,
                    url: dummyImg4,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Wrap(
                          spacing: 8,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            MyText(
                              paddingLeft: 3,
                              text: 'Justin Westervelt',
                              weight: FontWeight.w500,
                              color: isDark ? kPrimaryColor : kGrey10Color,
                            ),
                            GreenRoundedCheck(),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Wrap(
                                spacing: 4,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.imagesLoc,
                                    color: kGrey5Color,
                                    height: 16,
                                  ),
                                  MyText(
                                    text: 'Bangladesh',
                                    size: 12,
                                    color: kGrey5Color,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Wrap(
                                spacing: 4,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.imagesCalendar,
                                    color: kGrey5Color,
                                    height: 16,
                                  ),
                                  MyText(
                                    text: 'Joined June 2021',
                                    size: 12,
                                    color: kGrey5Color,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ProfileHeading(
                heading: 'My Account',
              ),
              ProfileTile(
                icon: Assets.imagesEndorsement,
                title: 'Endorsement',
                onTap: () => Get.to(() => Endorsements()),
              ),
              ProfileTile(
                icon: Assets.imagesFavorite,
                title: 'Favorite',
                onTap: () => Get.to(() => Favorite()),
              ),
              ProfileTile(
                icon: Assets.imagesSettings,
                title: 'Account settings',
                onTap: () => Get.to(() => AccountSettings()),
              ),
              ThemeSwitcher(
                value: themeController.isDarkTheme.value,
                onToggle: (value) => themeController.onToggle(),
              ),
              SizedBox(
                height: 15,
              ),
              ProfileHeading(
                heading: 'Notifications settings',
              ),
              ProfileTile(
                icon: Assets.imagesNotification,
                title: 'Notifications',
                onTap: () => Get.to(() => NotificationSettings()),
              ),
              SizedBox(
                height: 15,
              ),
              ProfileHeading(
                heading: 'Help',
              ),
              ProfileTile(
                icon: Assets.imagesFaq,
                title: 'FAQ',
                onTap: () => Get.to(() => Faq()),
              ),
              ProfileTile(
                icon: Assets.imagesChatWithUs,
                title: 'Chat with us',
                onTap: () => Get.to(() => ChatWithUs()),
              ),
              ProfileTile(
                icon: Assets.imagesFeedback,
                title: 'Leave Feedback!',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return feedbackDialog(
                        isDark: isDark,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget feedbackDialog({bool isDark = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: isDark ? kDarkSecondaryColor : kPrimaryColor,
          margin: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    MyText(
                      text: 'Give feedback',
                      size: 16,
                      weight: FontWeight.w600,
                      color: isDark ? kPrimaryColor : kTextColor,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.close,
                        color: isDark ? kPrimaryColor : kGrey2Color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Center(
                  child: RatingBarIndicator(
                    rating: 3,
                    unratedColor: Color(0xffF2F2F3),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: kRatedColor,
                    ),
                    itemCount: 5,
                    itemSize: 24.0,
                    itemPadding: EdgeInsets.symmetric(
                      horizontal: 2.5,
                    ),
                    direction: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MyTextField(
                  haveLabel: false,
                  hint: 'Type here',
                  maxLines: 6,
                  marginBottom: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: MyButton(
                    buttonText: 'Send',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
