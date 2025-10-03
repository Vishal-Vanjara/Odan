
class Recipe {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final int prepTime;
  final int cookTime;
  final int servings;
  final String difficulty;
  final List<String> ingredients;
  final List<String> steps;
  final double rating;

  const Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.prepTime,
    required this.cookTime,
    required this.servings,
    required this.difficulty,
    required this.ingredients,
    required this.steps,
    required this.rating,
  });

  String get totalTime => '${prepTime + cookTime} min';
}

// Mock data
class MockRecipes {
  static final List<Recipe> recipes = [
    Recipe(
      id: '1',
      title: 'Classic Pancakes',
      description: 'Fluffy and delicious homemade pancakes perfect for breakfast',
      imageUrl: 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400',
      prepTime: 10,
      cookTime: 15,
      servings: 4,
      difficulty: 'Easy',
      rating: 4.5,
      ingredients: [
        '1 cup all-purpose flour',
        '2 tablespoons sugar',
        '2 teaspoons baking powder',
        '1/2 teaspoon salt',
        '1 cup milk',
        '1 large egg',
        '2 tablespoons melted butter',
        '1 teaspoon vanilla extract',
      ],
      steps: [
        'In a large bowl, mix flour, sugar, baking powder, and salt.',
        'In another bowl, beat the egg, then add milk, melted butter, and vanilla.',
        'Pour wet ingredients into dry ingredients and stir until combined.',
        'Heat a lightly oiled griddle over medium-high heat.',
        'Pour batter onto the griddle, using approximately 1/4 cup for each pancake.',
        'Cook until bubbles form and edges are dry, then flip and cook until browned.',
        'Serve warm with maple syrup and butter.',
      ],
    ),
    Recipe(
      id: '2',
      title: 'Vegetable Stir Fry',
      description: 'Quick and healthy vegetable stir fry with savory sauce',
      imageUrl: 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400',
      prepTime: 15,
      cookTime: 10,
      servings: 2,
      difficulty: 'Medium',
      rating: 4.2,
      ingredients: [
        '2 cups mixed vegetables (bell peppers, broccoli, carrots)',
        '2 cloves garlic, minced',
        '1 tablespoon ginger, grated',
        '2 tablespoons soy sauce',
        '1 tablespoon olive oil',
        '1 teaspoon sesame oil',
        '1 tablespoon honey',
        'Green onions for garnish',
      ],
      steps: [
        'Chop all vegetables into bite-sized pieces.',
        'Heat olive oil in a large wok or skillet over high heat.',
        'Add garlic and ginger, stir for 30 seconds until fragrant.',
        'Add harder vegetables first (carrots, broccoli), cook for 2 minutes.',
        'Add remaining vegetables and stir fry for 3-4 minutes.',
        'Mix soy sauce, sesame oil, and honey, then pour over vegetables.',
        'Cook for another 2 minutes until sauce thickens.',
        'Garnish with green onions and serve hot.',
      ],
    ),
    Recipe(
      id: '3',
      title: 'Chocolate Chip Cookies',
      description: 'Classic chewy chocolate chip cookies that everyone loves',
      imageUrl: 'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=400',
      prepTime: 20,
      cookTime: 12,
      servings: 24,
      difficulty: 'Easy',
      rating: 4.8,
      ingredients: [
        '2 1/4 cups all-purpose flour',
        '1 teaspoon baking soda',
        '1 teaspoon salt',
        '1 cup butter, softened',
        '3/4 cup granulated sugar',
        '3/4 cup packed brown sugar',
        '2 large eggs',
        '2 teaspoons vanilla extract',
        '2 cups chocolate chips',
      ],
      steps: [
        'Preheat oven to 375°F (190°C).',
        'In a small bowl, mix flour, baking soda, and salt.',
        'In a large bowl, beat butter, granulated sugar, and brown sugar until creamy.',
        'Add eggs one at a time, then add vanilla.',
        'Gradually beat in flour mixture.',
        'Stir in chocolate chips.',
        'Drop rounded tablespoons onto ungreased baking sheets.',
        'Bake for 9-11 minutes or until golden brown.',
        'Cool on baking sheets for 2 minutes; remove to wire rack.',
      ],
    ),
    Recipe(
      id: '4',
      title: 'Caesar Salad',
      description: 'Fresh and crispy Caesar salad with homemade dressing',
      imageUrl: 'https://images.unsplash.com/photo-1546793665-c74683f339c1?w=400',
      prepTime: 15,
      cookTime: 0,
      servings: 4,
      difficulty: 'Easy',
      rating: 4.3,
      ingredients: [
        '1 large head romaine lettuce',
        '1/2 cup Parmesan cheese, grated',
        '1 cup croutons',
        '2 cloves garlic, minced',
        '2 anchovy fillets',
        '2 tablespoons lemon juice',
        '1 teaspoon Dijon mustard',
        '1/2 cup olive oil',
        'Salt and pepper to taste',
      ],
      steps: [
        'Wash and chop romaine lettuce into bite-sized pieces.',
        'In a small bowl, mash garlic and anchovies together.',
        'Whisk in lemon juice and Dijon mustard.',
        'Slowly whisk in olive oil until emulsified.',
        'Season with salt and pepper.',
        'In a large bowl, toss lettuce with dressing.',
        'Add Parmesan cheese and croutons, toss gently.',
        'Serve immediately.',
      ],
    ),
  ];
}