import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget/main.dart';

void main() {
  testWidgets('Navigation with Hero Animation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that FirstScreen is rendered.
    expect(find.text('First Screen'), findsOneWidget);
    expect(find.text('Second Screen'), findsNothing);

    // Tap on the image to navigate to SecondScreen.
    await tester.tap(find.byType(GestureDetector));
    await tester.pumpAndSettle();

    // Verify that SecondScreen is rendered.
    expect(find.text('First Screen'), findsNothing);
    expect(find.text('Second Screen'), findsOneWidget);

    // Tap on the image to pop back to FirstScreen.
    await tester.tap(find.byType(GestureDetector));
    await tester.pumpAndSettle();

    // Verify that we are back to FirstScreen.
    expect(find.text('First Screen'), findsOneWidget);
    expect(find.text('Second Screen'), findsNothing);
  });
}
