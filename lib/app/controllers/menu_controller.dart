import 'package:get/get.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

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
