import 'package:flutter/material.dart';

import 'core/index.dart';
import 'presentation/index.dart';

class CleanUpApp extends StatelessWidget {
  final String environment;
  const CleanUpApp({super.key, required this.environment});

  @override
  Widget build(BuildContext context) {
    return _CleanUpAppView(environment: environment);
  }
}

class _CleanUpAppView extends StatelessWidget {
  final String environment;
  const _CleanUpAppView({required this.environment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clean Up ($environment)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CleanUpColor.buttonColor),
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: CleanUpColor.white,
          selectedItemColor: CleanUpColor.buttonColor,
          unselectedItemColor: CleanUpColor.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppNavigation.router,
    );
  }
}
