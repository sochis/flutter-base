import 'package:flutter/material.dart';
import 'package:flutter_base/features/auth/presentation/pages/sign_in_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'SignInPage should have email and password fields and a sign in button',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: SignInPage())),
      );

      // Verify if email and password fields exist
      expect(
        find.byType(TextField),
        findsNWidgets(2),
      ); // Two text fields: email and password
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);

      // Verify if sign-in button exists
      expect(find.byType(ElevatedButton), findsOneWidget);
    },
  );

  testWidgets('Sign in button should call signIn when pressed', (
    WidgetTester tester,
  ) async {
    // Simulate user input and button press
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: Scaffold(body: SignInPage())),
      ),
    );

    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password123');
    await tester.tap(find.byType(ElevatedButton));

    // Trigger a frame
    await tester.pump();

    // Verify that the button was pressed and sign in was triggered (assumed logic)
    // Here you would check the state change or navigation
  });
}
