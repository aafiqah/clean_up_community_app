import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// BRANCH BOTTOM BAR
final branchHome = find.byKey(const Key('branch_Home'));
final branchMap = find.byKey(const Key('branch_Map'));
final branchMessage = find.byKey(const Key('branch_Message'));
final branchSaved = find.byKey(const Key('branch_Saved'));
final branchMenu = find.byKey(const Key('branch_Menu'));

// ONBOARDING SCREEN
final homePage = find.byKey(const Key('home_page'));
final logInOnBoarding = find.byKey(const Key('logIn_OnBoarding'));

// LOG IN SCREEN
final loginPage = find.byKey(const Key('login_page'));
final emailField = find.byKey(const Key('email_field'));
final passwordField = find.byKey(const Key('password_field'));
final logInButton = find.byKey(const Key('logIn_button'));
final signUpButton = find.byKey(const Key('signUp_button'));
final switchHasAccount = find.byKey(const Key('switch_Has_Account'));
final switchRegister = find.byKey(const Key('switch_Register'));

// HOME SCREEN
final searchBarHomePage = find.byKey(const Key('search_bar_home_page'));

// MAP SCREEN
final locationMap = find.byKey(const Key('location_map'));
final tileLayerMap = find.byKey(const Key('tile_layer_map'));
final pinMarkerLocation = find.byKey(const Key('pin_marker_location'));

// MENU SCREEN
final logOutButton = find.byKey(const Key('logOut_button'));
