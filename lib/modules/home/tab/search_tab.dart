import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/state_manager.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';

class SearchTab extends GetView<HomeController>{
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
      ),
    );
  }

}