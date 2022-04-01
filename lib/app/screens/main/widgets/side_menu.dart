import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/values.dart';
import '../../../controllers/menu_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);

  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(
          () => ListView(
            children: <Widget>[
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3.5,
                  ),
                  child: SvgPicture.asset('assets/icons/logo.svg'),
                ),
              ),
              ...List.generate(
                _menuController.menuItems.length,
                (index) => _DrawerItem(
                  isActive: index == _menuController.selectedIndex,
                  title: _menuController.menuItems[index],
                  onTap: () {
                    _menuController.setMenuItem(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const _DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        onTap: onTap,
        selectedTileColor: kPrimaryColor,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
