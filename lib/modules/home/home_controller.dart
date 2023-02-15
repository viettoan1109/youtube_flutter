import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:youtube_flutter/modules/home/tab/tabs.dart';

class HomeController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  var currentTab = HomePageTabs.home.obs;

  late HomeTab homeTab;
  late TrendingTab trendingTab;
  late SettingTab settingTab;
  late SearchTab searchTab;

  @override
  void onInit() {
    homeTab = const HomeTab();
    trendingTab = const TrendingTab();
    settingTab = const SettingTab();
    searchTab = const SearchTab();
  }

  Future<void> loadData() async{

  }

  int getCurrentIndex(HomePageTabs tab) {
    switch (tab) {
      case HomePageTabs.home:
        return 0;
      case HomePageTabs.trending:
        return 1;
      case HomePageTabs.setting:
        return 2;
      case HomePageTabs.search:
        return 3;
      default:
        return 0;
    }
  }

  HomePageTabs getCurrentTab(int index) {
    switch (index) {
      case 0:
        return HomePageTabs.home;
      case 1:
        return HomePageTabs.trending;
      case 2:
        return HomePageTabs.setting;
      case 3:
        return HomePageTabs.search;
      default:
        return HomePageTabs.home;
    }
  }

  Future switchTab(index) async {
    var tab = getCurrentTab(index);
    currentTab.value = tab;
  }
}
