import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class HomeScreen extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.deepPurple,
      ),
    );
  }

}