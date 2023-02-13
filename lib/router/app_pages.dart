import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_binding.dart';
import 'package:youtube_flutter/modules/home/home_screen.dart';
import 'package:youtube_flutter/modules/splash/splash_binding.dart';
import 'package:youtube_flutter/modules/splash/splash_screen.dart';

import 'app_routers.dart';

class AppPages {
  static final routers = [
    GetPage(
        name: Routers.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
      name: Routers.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    )
  ];
}
