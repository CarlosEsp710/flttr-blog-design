import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../constants/values.dart';
import '../../controllers/menu_controller.dart';
import '../../screens/home/home_screen.dart';

import 'widgets/header.dart';
import 'widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _menuController.scaffoldKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: const HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
