import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

final GoRouter _router =
    GoRouter(initialLocation: "/login_page", routes: <RouteBase>[
  GoRoute(
    name: "/login_page",
    path: "/login_page",
    builder: (context, state) {
      return const LoginPage();
    },
  ),
  GoRoute(
    name: "/home_page",
    path: "/home_page",
    builder: (context, state) {
      return const HomePage();
    },
  ),
]);
