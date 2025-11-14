import 'dart:io';

import 'package:clean_up_community_app/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'helpers/index.dart';

void main() {
  patrolTest(
    'create account',
    ($) async {
      await $.pumpWidgetAndSettle(const CleanUpApp(environment: '',));

      await Future.delayed(const Duration(seconds: 3));
      await $(logInOnBoarding).tap();

      if ($(switchHasAccount).exists) {
        await $(switchHasAccount).tap();
      }

      await $(emailField).scrollTo().tap();
      await $(emailField).enterText('alessajohar@gmail.com');

      await $(passwordField).scrollTo().tap();
      await $(passwordField).enterText('Alessa@1234');

       // Hide keyboard
      if (Platform.isAndroid) {
        await $.native.pressBack();
      }

      await $(signUpButton).tap();
      await $.pumpAndSettle(); // Wait for navigation or response

      await Future.delayed(const Duration(seconds: 3));
      expect($(branchMenu).exists, true);

      await $(branchMenu).tap();
      await $(logOutButton).tap();
    },
  );

  patrolTest(
    'login account',
    ($) async {
      await $.pumpWidgetAndSettle(const CleanUpApp(environment: '',));

      await Future.delayed(const Duration(seconds: 3));
      await $(logInOnBoarding).tap();

      await $(emailField).scrollTo().tap();
      await $(emailField).enterText('alessajohar@gmail.com');

      await $(passwordField).scrollTo().tap();
      await $(passwordField).enterText('Alessa@1234');

      // Hide keyboard
      if (Platform.isAndroid) {
        await $.native.pressBack(); 
      }

      await $(logInButton).tap();
      await $.pumpAndSettle();

      await Future.delayed(const Duration(seconds: 3));
      expect($(branchMenu).exists, true);

      await $(branchMenu).tap();
      await $(logOutButton).tap();
    },
  );

  patrolTest(
    'onTap search bar in home page',
    ($) async {
      await $.pumpWidgetAndSettle(const CleanUpApp(environment: '',));

      await Future.delayed(const Duration(seconds: 3));
      await $(homePage).tap();

      await Future.delayed(const Duration(seconds: 3));
      await $(searchBarHomePage).tap();

      await Future.delayed(const Duration(seconds: 3)); // Observe focus behavior
    },
  );

  patrolTest(
    'open map page and location permission request',
    ($) async {
      await $.pumpWidgetAndSettle(const CleanUpApp(environment: '',));

      await Future.delayed(const Duration(seconds: 3));
      await $(homePage).tap();

      await Future.delayed(const Duration(seconds: 3));
      await $(branchMap).tap();

      // location permission native dialog
      if (Platform.isAndroid) {
        await $.native.selectFineLocation(); // tap 'Precise' in selection type of map
        // Or use: await $.native.selectCoarseLocation(); // tap 'Approximate' in selection type of map
      }
      await $.native.grantPermissionWhenInUse(); // tap "While using the app"
      // Or use: await $.native.grantPermissionOnlyThisTime(); // tap "Only this time"
      // Or use: await $.native.denyPermission(); // tap "Don't allow"

      expect($(tileLayerMap).exists, true);
      await Future.delayed(const Duration(seconds: 20)); // Let map render
    },
  );
}
