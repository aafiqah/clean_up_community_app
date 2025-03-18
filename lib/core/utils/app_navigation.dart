import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/index.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _rootNavigatorMap =
      GlobalKey<NavigatorState>(debugLabel: 'shellMap');
  static final _rootNavigatorChat =
      GlobalKey<NavigatorState>(debugLabel: 'shellChat');
  static final _rootNavigatorSaved =
      GlobalKey<NavigatorState>(debugLabel: 'shellSaved');
  static final _rootNavigatorMenu =
      GlobalKey<NavigatorState>(debugLabel: 'shellMenu');

  static final GoRouter router = GoRouter(
    initialLocation: '/onBoarding_page',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        name: '/onBoarding_page',
        path: '/onBoarding_page',
        builder: (context, state) {
          return const OnboardingPage();
        },
        routes: [
          // SUB HOME
          GoRoute(
            name: '/login_page',
            path: '/login_page',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => OnboardingCubit(),
                child: const LoginSignUpPage(),
              );
            },
          ),
          // CHECK ALL PERMISSION (MAP/CONTACTS/GALLERY)
          GoRoute(
            name: '/location_permission_page',
            path: '/location_permission_page',
            builder: (context, state) {
              return BlocProvider(
                create: (context) => MapCommunityCubit(),
                child: const LoadingPermissionPage(),
              );
            },
          ),
        ],
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainWrapper(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          // HOME
          StatefulShellBranch(navigatorKey: _rootNavigatorHome, routes: [
            GoRoute(
              name: '/home_page',
              path: '/home_page',
              builder: (context, state) {
                return BlocProvider(
                      create: (context) => HomePageCubit(),
                  child: HomePage(
                    key: state.pageKey,
                  ),
                );
              },
              routes: [
                // SUB HOME
                GoRoute(
                  name: '/create_event_page',
                  path: '/create_event_page',
                  parentNavigatorKey: _rootNavigatorKey,
                  builder: (context, state) {
                    return const CreateEventPage();
                  },
                ),
              ],
            ),
          ]),
          // MAP
          StatefulShellBranch(navigatorKey: _rootNavigatorMap, routes: [
            GoRoute(
              name: '/map_page',
              path: '/map_page',
              builder: (context, state) {
                return MapEventPage(
                  key: state.pageKey,
                );
              },
              routes: const [],
            ),
          ]),
          // CHAT
          StatefulShellBranch(navigatorKey: _rootNavigatorChat, routes: [
            GoRoute(
              name: '/chat_page',
              path: '/chat_page',
              builder: (context, state) {
                return ChatPage(
                  key: state.pageKey,
                );
              },
              routes: const [
                // SUB HOME
              ],
            ),
          ]),
          // SAVED
          StatefulShellBranch(navigatorKey: _rootNavigatorSaved, routes: [
            GoRoute(
              name: '/saved_page',
              path: '/saved_page',
              builder: (context, state) {
                return SavedPage(
                  key: state.pageKey,
                );
              },
              routes: const [
                // SUB HOME
              ],
            ),
          ]),
          // MENU
          StatefulShellBranch(navigatorKey: _rootNavigatorMenu, routes: [
            GoRoute(
              name: '/menu_page',
              path: '/menu_page',
              builder: (context, state) {
                return MenuPage(
                  key: state.pageKey,
                );
              },
              routes: const [
                // SUB HOME
              ],
            ),
          ])
        ],
      ),
    ],
  );
}
