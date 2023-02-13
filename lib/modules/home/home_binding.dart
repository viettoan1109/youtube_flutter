import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }

}