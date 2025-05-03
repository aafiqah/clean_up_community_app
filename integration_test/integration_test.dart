import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:clean_up_community_app/main.dart' as app;

import 'helpers/index.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('CleanUp Community App', () {
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

      // Enter email and password
      await tester.enterText(emailField, 'alessajohar@gmail.com');
      await tester.pumpAndSettle();
      await tester.enterText(passwordField, 'Alessa@1234');
      await tester.pumpAndSettle();

      // Tap on signup button to navigation to home page
      await tester.tap(signUpButton);
      await tester.pumpAndSettle();

      // Navigation to menu page
      await tester.tap(branchMenu);
      await tester.pumpAndSettle();

      // Tap on log out button
      await tester.tap(logOutButton);
      await tester.pumpAndSettle();
    });

    testWidgets('login account', (WidgetTester tester) async {
      // Launch the app
      app.main();
      await tester.pumpAndSettle();

      // Tap on login button in onboarding
      await tester.tap(logInOnBoarding);
      await tester.pumpAndSettle();

      // Enter email and password
      await tester.enterText(emailField, 'alessajohar@gmail.com');
      await tester.pumpAndSettle();
      await tester.enterText(passwordField, 'Alessa@1234');
      await tester.pumpAndSettle();

      // Tap on login button to navigation to home page
      await tester.tap(logInButton);
      await tester.pumpAndSettle();

      // Navigation to menu page
      await tester.tap(branchMenu);
      await tester.pumpAndSettle();

      // Tap on log out button
      await tester.tap(logOutButton);
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
      await tester.tap(searchBarHomePage);
      await tester.pumpAndSettle();
    });
  });
}
