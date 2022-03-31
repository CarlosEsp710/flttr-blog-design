import 'package:flutter/material.dart';

import '../../constants/values.dart';
import '../../screens/home/home_screen.dart';

import 'widgets/header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Header(),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: const HomeScreen(),
          ),
        ],
      ),
    );
  }
}
