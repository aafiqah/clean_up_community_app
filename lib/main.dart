import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom widget/index.dart';
import 'screen/index.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  initialLocation: '/onBoarding_page',
  routes: <RouteBase>[
    GoRoute(
      name: '/onBoarding_page',
      path: '/onBoarding_page',
      builder: (context, state) {
        return const OnboardingPage();
      },
    ),
    GoRoute(
      name: '/login_page',
      path: '/login_page',
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      name: '/home_page',
      path: '/home_page',
      builder: (context, state) {
        return const Bottomnavbar();
      },
    ),
    GoRoute(
      name: '/chat_page',
      path: '/chat_page',
      builder: (context, state) {
        return const ChatPage();
      },
    ),
    GoRoute(
      name: '/saved_page',
      path: '/saved_page',
      builder: (context, state) {
        return const SavedPage();
      },
    ),
    GoRoute(
      name: '/menu_page',
      path: '/menu_page',
      builder: (context, state) {
        return const MenuPage();
      },
    ),
  ],
);
