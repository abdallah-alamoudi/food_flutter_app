class Meal {
  final String id;
  final String categoryId;
  final String title;
  final String description;
  final List<String> ingredients;
  final List<String> steps;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal(
      {required this.id,
      required this.categoryId,
      required this.title,
      required this.description,
      required this.ingredients,
      required this.steps,
      required this.imageUrl,
      required this.complexity,
      required this.affordability,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian});
}

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}
