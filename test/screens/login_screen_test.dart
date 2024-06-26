import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:smarthub_flutter/screens/login_screen.dart';
import 'package:smarthub_flutter/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/mockito.dart';

class FirebaseAuthMock extends Mock implements FirebaseAuth {
  @override
  Future<UserCredential> signInWithEmailAndPassword(
      {required String email, required String password}) {
    throw FirebaseAuthException(
        code: 'user-not-found', message: 'No user found for that email.');
  }
}

void main() {
  group('LoginScreen Tests', () {
    late MockFirebaseAuth mockAuth;

    setUp(() {
      mockAuth = MockFirebaseAuth(signedIn: false);
    });

    testWidgets('Successful login navigates to home screen',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: LoginScreen(auth: mockAuth),
      ));

      await tester.enterText(
          find.widgetWithText(TextFormField, 'Email'), 'test@example.com');
      await tester.enterText(
          find.widgetWithText(TextFormField, 'Password'), 'password123');
      await tester.tap(find.text('Sign In'));
      await tester.pumpAndSettle();

      expect(find.byType(HomeScreen), findsOneWidget);
    });

    testWidgets('Displays error on invalid login', (WidgetTester tester) async {
      // Create a new mock for wrong authentication
      final wrongAuth = FirebaseAuthMock();

      await tester.pumpWidget(MaterialApp(
        home: LoginScreen(auth: wrongAuth),
      ));

      await tester.enterText(
          find.widgetWithText(TextFormField, 'Email'), 'wrong@example.com');
      await tester.enterText(
          find.widgetWithText(TextFormField, 'Password'), 'wrongPassword');
      await tester.tap(find.text('Sign In'));
      await tester.pump(); // Trigger a frame
      await tester.pumpAndSettle(); // Wait for all animations and state updates

      // Check for error messages
      expect(find.text('incorrect password or email'), findsOneWidget);
    });
  });
}
