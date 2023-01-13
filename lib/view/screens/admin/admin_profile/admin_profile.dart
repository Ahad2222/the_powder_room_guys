import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/constant/color.dart';
import 'package:the_powder_room_guys/generated/assets.dart';
import 'package:the_powder_room_guys/helper/font_families_constant.dart';
import 'package:the_powder_room_guys/main.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_change_company_name.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_change_name.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_change_phone_number.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_chat_with_us.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_faq.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_notification_settings.dart';
import 'package:the_powder_room_guys/view/screens/admin/admin_profile/admin_account_settings/admin_update_pass.dart';
import 'package:the_powder_room_guys/view/widget/common_image_view.dart';
import 'package:the_powder_room_guys/view/widget/my_button.dart';
import 'package:the_powder_room_guys/view/widget/my_text.dart';
import 'package:the_powder_room_guys/view/widget/my_text_field.dart';
import 'package:the_powder_room_guys/view/widget/profile_tile.dart';

class AdminProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CommonImageView(
                      height: 50,
                      width: 50,
                      radius: 100.0,
                      url: dummyImg4,
                    ),
                    Image.asset(
                      Assets.imagesAddProfileImage,
                      height: 16.79,
                      width: 47,
                    ),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MyText(
                        text: 'Raju Mullah',
                        fontFamily: POPPINS,
                        weight: FontWeight.w600,
                      ),
                      MyText(
                        paddingTop: 4,
                        text: 'At The Powder Room Guys App',
                        size: 12,
                        color: kGrey8Color,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 120),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                ProfileTile(
                  icon: Assets.imagesOnline,
                  title: 'Online',
                  haveNextIcon: false,
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesPlane,
                  title: 'Travelling',
                  haveNextIcon: false,
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesDarkMode,
                  title: 'Dark mode',
                  haveNextIcon: false,
                  onTap: () {},
                ),
                MyText(
                  paddingTop: 11,
                  text: 'My Account'.toUpperCase(),
                  size: 12,
                  weight: FontWeight.w500,
                  color: kGrey5Color,
                  paddingBottom: 7,
                ),
                ProfileTile(
                  icon: Assets.imagesBusinessAndTrade,
                  title: 'Company name',
                  onTap: () => Get.to(
                    () => AdminChangeCompanyName(),
                  ),
                ),
                ProfileTile(
                  icon: Assets.imagesAccountSettings,
                  title: 'Raju Mullah',
                  onTap: () => Get.to(
                    () => AdminChangeName(),
                  ),
                ),
                ProfileTile(
                  icon: Assets.imagesPhoneCall,
                  title: '+8801784453204',
                  onTap: () => Get.to(
                    () => AdminChangePhoneNumber(),
                  ),
                ),
                ProfileTile(
                  icon: Assets.imagesMail,
                  title: 'rbrajumullah100@gmail.com',
                  haveNextIcon: false,
                  onTap: () {},
                ),
                ProfileTile(
                  icon: Assets.imagesLock,
                  title: '***********',
                  onTap: () => Get.to(
                    () => AdminUpdatePass(),
                  ),
                ),
                MyText(
                  paddingTop: 11,
                  text: 'Notifications settings'.toUpperCase(),
                  size: 12,
                  weight: FontWeight.w500,
                  color: kGrey5Color,
                  paddingBottom: 7,
                ),
                ProfileTile(
                  icon: Assets.imagesSettingsNotify,
                  title: 'Notifications',
                  onTap: () => Get.to(
                    () => AdminNotificationSettings(),
                  ),
                ),
                MyText(
                  paddingTop: 11,
                  text: 'Help'.toUpperCase(),
                  size: 12,
                  weight: FontWeight.w500,
                  color: kGrey5Color,
                  paddingBottom: 7,
                ),
                ProfileTile(
                  icon: Assets.imagesFaq,
                  title: 'FAQ',
                  onTap: () => Get.to(
                    () => AdminFaq(),
                  ),
                ),
                ProfileTile(
                  icon: Assets.imagesChatWithAdmin,
                  title: 'Chat with admin',
                  onTap: () => Get.to(
                    () => AdminChatWithUs(),
                  ),
                ),
                ProfileTile(
                  icon: Assets.imagesFeedback,
                  title: 'Leave Feedback!',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return feedbackDialog();
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesLogout,
                      height: 20,
                    ),
                    MyText(
                      paddingLeft: 4,
                      text: 'Log out',
                      weight: FontWeight.w600,
                      color: kRedColor,
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
  }

  Widget feedbackDialog() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: kSecondaryColor,
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
                      color: kGrey8Color,
                    ),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.close,
                        color: kGrey8Color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: RatingBarIndicator(
                    rating: 3,
                    unratedColor: kUnRatedColor,
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
                  height: 16,
                ),
                MyTextField(
                  haveLabel: false,
                  hintText: 'Type here',
                  maxLines: 6,
                  fillColor: kBgColor,
                  marginBottom: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: MyButton(
                    buttonText: 'Send',
                    textSize: 14,
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
