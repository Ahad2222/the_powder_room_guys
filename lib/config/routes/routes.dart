import 'package:get/get.dart';
import 'package:the_powder_room_guys/view/screens/splash_screen/splash_screen.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppLinks.splash_screen,
      page: () => SplashScreen(),
    ),
  ];
}

class AppLinks {
  static const splash_screen = '/splash_screen';
}
