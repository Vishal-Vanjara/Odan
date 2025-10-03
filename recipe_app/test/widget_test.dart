import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:recipe_app/main.dart';
import 'package:recipe_app/screens/recipe_list_screen.dart';

void main() {
  testWidgets('Recipe app launches correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RecipeApp());

    // Verify that the app starts with RecipeListScreen
    expect(find.byType(RecipeListScreen), findsOneWidget);

    // Verify that the app bar title is correct
    expect(find.text('Recipes'), findsOneWidget); // Adjust based on your actual title

    // Verify that the theme is applied (orange color)
    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.theme!.primaryColor, Colors.orange);
  });

  testWidgets('App has correct theme settings', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeApp());

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    final theme = materialApp.theme!;

    expect(theme.useMaterial3, true);
    expect(theme.primaryColor, Colors.orange);
    expect(theme.textTheme.bodyMedium?.fontFamily, 'Roboto');
  });
}