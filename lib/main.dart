import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_powder_room_guys/config/routes/routes.dart';
import 'package:the_powder_room_guys/config/theme/light_theme.dart';
import 'package:the_powder_room_guys/controller/admin_controller/admin_auth_controller/admin_auth_controller.dart';
import 'package:the_powder_room_guys/controller/guest_controller/guest_auth_controller/guest_auth_controller.dart';
import 'package:the_powder_room_guys/controller/member_controller/member_auth_controller/member_sign_up_controller.dart';

void main() {
  Get.put(GuestAuthController());
  Get.put(MemberAuthController());
  Get.put(AdminAuthController());
  runApp(MyApp());
}

//DO NOT REMOVE Unless you find their usage.
String dummyImg =
    'https://www.amateurphotographer.co.uk/wp-content/uploads/2020/10/Rossella_Vanon-SHOT-5-820x547.jpg';
String dummyImg1 =
    'https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';
String dummyImg2 =
    'https://images.unsplash.com/photo-1535579710123-3c0f261c474e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';
String dummyImg3 =
    'https://images.unsplash.com/photo-1629747490241-624f07d70e1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80';
String dummyImg4 =
    'https://images.unsplash.com/photo-1558507652-2d9626c4e67a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'The Powder Room Guys',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: AppLinks.admin_splash_screen,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.cupertino,
    );
  }
}
