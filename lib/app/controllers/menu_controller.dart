import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  List<String> get menuItems => [
        'Cases',
        'Services',
        'About Us',
        'Careers',
        'Blog',
        'Contact',
      ];

  void setMenuItem(int value) {
    _selectedIndex.value = value;
  }
}
