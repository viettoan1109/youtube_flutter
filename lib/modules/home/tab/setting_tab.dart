import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class SettingTab extends GetView<HomeController> {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigoAccent,
      ),
    );
  }
}
