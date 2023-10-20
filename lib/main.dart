import 'package:flutter/material.dart';
import 'package:sport_sync_pro_flutter/pages/intro_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.montserrat(textStyle: textTheme.bodyMedium),
        ),
      ),
      home: const IntroPage(),
    );
  }
}

