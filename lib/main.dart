import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/pages/intro_page.dart';
Map<int, Color> primary = {
  50: const Color.fromRGBO(84,94,216, .1),
  100: const Color.fromRGBO(84,94,216, .2),
  200: const Color.fromRGBO(84,94,216, .3),
  300: const Color.fromRGBO(84,94,216, .4),
  400: const Color.fromRGBO(84,94,216, .5),
  500: const Color.fromRGBO(84,94,216, .6),
  600: const Color.fromRGBO(84,94,216, .7),
  700: const Color.fromRGBO(84,94,216, .8),
  800: const Color.fromRGBO(84,94,216, .9),
  900: const Color.fromRGBO(84,94,216, 1),
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

