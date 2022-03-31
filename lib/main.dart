import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../app/constants/values.dart';
import '../app/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Blog',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme:
            GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme).copyWith(
          bodyText1: const TextStyle(color: kBodyTextColor),
          bodyText2: const TextStyle(color: kBodyTextColor),
          headline5: const TextStyle(color: kDarkBlackColor),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
