import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class TrendingTab extends GetView<HomeController> {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
      ),
    );
  }
}
