import 'package:get/get.dart';

import '../../router/app_routers.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(milliseconds: 1500));
    Get.offNamed(Routers.home);
  }
}
