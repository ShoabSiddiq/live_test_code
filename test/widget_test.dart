// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:live_test/main.dart'; // Make sure this path is correct

void main() {
  testWidgets('Add contact test', (WidgetTester tester) async {
    await tester.pumpWidget(const ContactApp());

    // Enter name
    await tester.enterText(find.byType(TextField).at(0), 'Hasan');
    // Enter number
    await tester.enterText(find.byType(TextField).at(1), '01745-777777');

    // Tap the Add button
    await tester.tap(find.text('Add'));
    await tester.pump();

    // Verify contact is added
    expect(find.text('Hasan'), findsOneWidget);
    expect(find.text('01745-777777'), findsOneWidget);
  });
}

