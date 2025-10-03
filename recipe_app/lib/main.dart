import 'package:flutter/material.dart';
import 'models/recipe.dart';
import 'screens/recipe_list_screen.dart';
import 'screens/recipe_detail_screen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const RecipeListScreen(),
      routes: {
        '/detail': (context) {
          final recipe = ModalRoute.of(context)!.settings.arguments as Recipe;
          return RecipeDetailScreen(recipe: recipe);
        },
      },
    );
  }
}