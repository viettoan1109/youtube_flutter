import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/router/app_pages.dart';
import 'package:youtube_flutter/router/app_routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Youtube Say No Ads",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: Routers.splash,
      getPages: AppPages.routers,
    );
  }
}
