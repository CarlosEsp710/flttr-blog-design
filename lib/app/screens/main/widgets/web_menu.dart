import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/menu_controller.dart';
import '../../../constants/values.dart';

class WebMenu extends StatelessWidget {
  WebMenu({
    Key? key,
  }) : super(key: key);

  final MenuController _menuController = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _menuController.menuItems.length,
          (index) => _WebMenuItem(
            text: _menuController.menuItems[index],
            isActive: index == _menuController.selectedIndex,
            onPress: () => _menuController.setMenuItem(index),
          ),
        ),
      ),
    );
  }
}

class _WebMenuItem extends StatefulWidget {
  final bool isActive;
  final String text;
  final VoidCallback onPress;

  const _WebMenuItem({
    Key? key,
    this.isActive = false,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  State<_WebMenuItem> createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<_WebMenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return kPrimaryColor;
    } else if (!widget.isActive && _isHover) {
      return kPrimaryColor.withOpacity(0.4);
    }

    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 3,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: widget.isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
