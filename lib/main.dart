import 'package:flutter/material.dart';
import 'package:islami/detailsscreen/suradetailsscreen/suradetailsscreen.dart';
import 'package:islami/splash/splashscreen.dart';

import 'home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            titleTextStyle: TextStyle(
                color: Color(0xFF242424),
                fontSize: 30,
                fontWeight: FontWeight.w700),
            centerTitle: true),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color(0xFF242424),
            selectedIconTheme: IconThemeData(size: 35),
            unselectedIconTheme: IconThemeData(size: 32)),
        primaryColor: const Color(0xFFB7935F),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SplashScreen.routeName: (_) => const SplashScreen(),
        SuraDetailsScreen.routeName: (_) => const SuraDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
