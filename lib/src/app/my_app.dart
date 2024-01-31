import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weight_tracker/src/core/my_colors.dart';
import 'package:weight_tracker/src/home/presenter/page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: MyColors.primary,
            primary: MyColors.primary,
          ),
          useMaterial3: true,
          fontFamily: GoogleFonts.gruppo().fontFamily,
        ),
        home: const HomePage(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomePage(),
        });
  }
}
