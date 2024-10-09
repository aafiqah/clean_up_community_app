import 'package:clean_up_community_app/constant/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CleanUpColor.buttonColor),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: CleanUpColor.white,
          selectedItemColor: CleanUpColor.buttonColor,
          unselectedItemColor: CleanUpColor.white,
        ),
      ),
      routerConfig: AppNavigation.router,
    );
  }
}
