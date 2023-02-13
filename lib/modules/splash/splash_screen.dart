import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/splash/splash_controller.dart';

import '../../share/constants/assets_path.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        AssetsImagePath.logo,
        height: 250,
        width: 250,
      )),
    );
  }
}