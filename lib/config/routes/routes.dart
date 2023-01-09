import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/guest/guest_auth/guest_signup/guest_signup.dart';
import 'package:the_powder_room_guys/view/screens/splash_screen/guest_splash_screen.dart';

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
  ];
}

class AppLinks {
  // Guest
  static const guest_splash_screen = '/guest_splash_screen';
  static const guest_signup = '/guest_signup';
// Guest
}
