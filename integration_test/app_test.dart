import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:clean_up_community_app/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('CleanUp Community App', () {
    // BRANCH BOTTOM BAR
    final branchHome = find.byKey(const Key('branchHome'));
    final branchMap = find.byKey(const Key('branchMap'));
    final branchMessage = find.byKey(const Key('branchMessage'));
    final branchSaved = find.byKey(const Key('branchSaved'));
    final branchMenu = find.byKey(const Key('branchMenu'));

    // ONBOARDING SCREEN
    final homePage = find.byKey(const Key('homePage'));
    final logInOnBoarding = find.byKey(const Key('logInOnBoarding'));

    // LOG IN SCREEN
    final email = find.byKey(const Key('email'));
    final password = find.byKey(const Key('password'));
    final submitLogIn = find.byKey(const Key('submitLogIn'));
    final submitSignUp = find.byKey(const Key('submitSignUp'));
    final switchHasAccount = find.byKey(const Key('switchHasAccount'));
    final switchRegister = find.byKey(const Key('switchRegister'));

    // HOME SCREEN
    final onTapSearchHome = find.byKey(const Key('onTapSearchHome'));

    // MENU SCREEN
    final logOut = find.byKey(const Key('logOut'));

    testWidgets('create account', (WidgetTester tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on login button
      await tester.tap(logInOnBoarding);
      await tester.pumpAndSettle();

      // Ensure we are in Login Mode and need to switch
      if (tester.any(switchHasAccount)) {
        expect(find.text('Register Now'), findsOneWidget);

        // Tap to switch to Sign-Up mode
        await tester.tap(switchHasAccount);
        await tester.pumpAndSettle();

        // Verify switch happened
        expect(find.text('Login Now'), findsOneWidget);
      }

      // If the button isn't present, go directly to Sign-Up
      await tester.enterText(email, 'alessajohar@gmail.com');
      await tester.enterText(password, 'Alessa@1234');

      await tester.tap(submitSignUp);
      await tester.pumpAndSettle();

      // Navigation to menu page
      await tester.tap(branchMenu);
      await tester.pumpAndSettle();

      // Tap on log out button
      await tester.tap(logOut);
      await tester.pumpAndSettle();
    });

    testWidgets('login account', (WidgetTester tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on login button in onboarding
      await tester.tap(logInOnBoarding);
      await tester.pumpAndSettle();

      // Directly do Log In
      await tester.enterText(email, 'alessajohar@gmail.com');
      await tester.enterText(password, 'Alessa@1234');

      // Tap on login button to navigation to home page
      await tester.tap(submitLogIn);
      await tester.pumpAndSettle();

      // Navigation to menu page
      await tester.tap(branchMenu);
      await tester.pumpAndSettle();

      // Tap on log out button
      await tester.tap(logOut);
      await tester.pumpAndSettle();
    });

    testWidgets('onTap search bar in home page', (WidgetTester tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on login button in onboarding
      await tester.tap(homePage);
      await tester.pumpAndSettle();

      // Tap in search bar
      await tester.tap(onTapSearchHome);
      await tester.pumpAndSettle();
    });
  });
}
