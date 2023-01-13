import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/admin/launch/admin_splash_screen.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_signup.dart';
import 'package:the_powder_room_guys/view/screens/member/member_auth/member_signup/member_signup.dart';
import 'package:the_powder_room_guys/view/screens/splash_screen/guest_splash_screen.dart';
import 'package:the_powder_room_guys/view/screens/splash_screen/member_splash_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    // Guest
    GetPage(
      name: AppLinks.guest_splash_screen,
      page: () => GuestSplashScreen(),
    ),
    GetPage(
      name: AppLinks.guest_signup,
      page: () => GuestSignup(),
    ),
    // Guest
    // MEMBER
    GetPage(
      name: AppLinks.member_splash_screen,
      page: () => MemberSplashScreen(),
    ),
    GetPage(
      name: AppLinks.member_signup,
      page: () => MemberSignup(),
    ),
    // MEMBER
    // MEMBER
    GetPage(
      name: AppLinks.admin_splash_screen,
      page: () => AdminSplashScreen(),
    ),
    GetPage(
      name: AppLinks.member_signup,
      page: () => MemberSignup(),
    ),
    // MEMBER
  ];
}

class AppLinks {
  // Guest
  static const guest_splash_screen = '/guest_splash_screen';
  static const guest_signup = '/guest_signup';

// Guest
  // member
  static const member_splash_screen = '/member_splash_screen';
  static const member_signup = '/member_signup';

// member

  // Guest
  static const admin_splash_screen = '/admin_splash_screen';
  static const admin_signup = '/member_signup';
// Guest
}
