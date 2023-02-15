import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class HomeTab extends GetView<HomeController> {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: RefreshIndicator(
      onRefresh: () => controller.loadData(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          color: Colors.deepOrange,
          height: 250,
          width: 250,
        ),
      ),
    ));
  }
}
