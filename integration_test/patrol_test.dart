import 'package:clean_up_community_app/main.dart';
import 'package:patrol/patrol.dart';

import 'helpers/index.dart';

void main() {
  patrolTest(
    'create account',
    ($) async {
      await $.pumpWidgetAndSettle(const MyApp());
      await $.pumpAndSettle();

      await $(logInOnBoarding).tap();

      // If in login mode, switch to sign up
      if ($(switchHasAccount).exists) {
        await $(switchHasAccount).tap();
        await $.pumpAndSettle();
      }

      await $(emailField).enterText('alessajohar@gmail.com');
      await $(passwordField).enterText('Alessa@1234');

      await $(signUpButton).tap();
      await $.pumpAndSettle();

      await $(branchMenu).tap();
      await $(logOutButton).tap();
    },
  );

  patrolTest(
    'login account',
    ($) async {
      await $.pumpWidgetAndSettle(const MyApp());
      await $.pumpAndSettle();

      await $(logInOnBoarding).tap();

      await $(emailField).enterText('alessajohar@gmail.com');
      await $(passwordField).enterText('Alessa@1234');

      await $(logInButton).tap();
      await $.pumpAndSettle();

      await $(branchMenu).tap();
      await $(logOutButton).tap();
    },
  );

  patrolTest(
    'onTap search bar in home page',
    ($) async {
      await $.pumpWidgetAndSettle(const MyApp());
      await $.pumpAndSettle();

      await $(homePage).tap();
      await $(searchBarHomePage).tap();
    },
  );
}
