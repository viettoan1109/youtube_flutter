import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:youtube_flutter/modules/home/home_controller.dart';
import 'package:youtube_flutter/modules/home/tab/tabs.dart';
import 'package:youtube_flutter/share/constants/assets_path.dart';
import 'package:youtube_flutter/share/constants/color.dart';
import 'package:youtube_flutter/share/widgets/gradient_text.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Obx(() => _buildWidgetMobile()),
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    String title;
    switch (controller.currentTab.value) {
      case HomePageTabs.home:
        title = "Home";
        break;
      case HomePageTabs.trending:
        title = "Trending";
        break;
      case HomePageTabs.setting:
        title = "Setting";
        break;
      case HomePageTabs.search:
        title = "Search";
        break;
    }

    return AppBar(
      elevation: 1,
      leading: Container(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(AssetsSvgPath.icLogo),
      ),
      backgroundColor: Colors.white,
      title: GradientText(title,
          gradient: const LinearGradient(
              colors: [ColorConstants.orangeFE6603, Colors.yellow])),
    );
  }

  Widget _buildTabs(HomePageTabs tabs) {
    switch (tabs) {
      case HomePageTabs.home:
        return controller.homeTab;
      case HomePageTabs.trending:
        return controller.trendingTab;
      case HomePageTabs.setting:
        return controller.settingTab;
      case HomePageTabs.search:
        return controller.searchTab;
      default:
        return controller.homeTab;
    }
  }

  BottomNavigationBarItem _buildNavigationBarItem(String label, String svg) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(svg).paddingOnly(bottom: 10),
      label: label,
    );
  }

  Widget _buildWidgetMobile() {
    return Scaffold(
      appBar: _appBar(),
      body: _buildTabs(controller.currentTab.value),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildNavigationBarItem(
              "Trang chủ",
              HomePageTabs.home == controller.currentTab.value
                  ? AssetsSvgPath.icHomeSelect
                  : AssetsSvgPath.icHome),
          _buildNavigationBarItem(
              "Thịnh hành",
              HomePageTabs.trending == controller.currentTab.value
                  ? AssetsSvgPath.icTrendingSelect
                  : AssetsSvgPath.icTrending),
          _buildNavigationBarItem(
              "Cài đặt",
              HomePageTabs.setting == controller.currentTab.value
                  ? AssetsSvgPath.icSettingSelect
                  : AssetsSvgPath.icSetting),
          _buildNavigationBarItem(
              "Tìm kiếm",
              HomePageTabs.search == controller.currentTab.value
                  ? AssetsSvgPath.icSearchSelect
                  : AssetsSvgPath.icSearch),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: controller.getCurrentIndex(controller.currentTab.value),
        selectedItemColor: ColorConstants.red,
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        onTap: (index) => controller.switchTab(index),
      ),
    );
  }
}
