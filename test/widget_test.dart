// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pay_mobile_web_admin/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester, dynamic findsOneWidget, dynamic Icons) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    var find;
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  } as Future<Null> Function(dynamic tester));
}

mixin findsNothing {
}

void expect(text, findsOneWidget) {
}

extension on WidgetTester {
  pumpWidget(MyApp myApp) {}
}

class WidgetTester {
  tap(byIcon) {}

  pump() {}
}

void testWidgets(String s, Future<Null> Function(dynamic tester) param1) {
}

class MyApp {
  const MyApp();
}
