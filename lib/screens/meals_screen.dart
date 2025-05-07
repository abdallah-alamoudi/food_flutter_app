import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/models/meal.dart';
import 'package:food/widget/app_bar.dart';
import 'package:food/widget/meal_item.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = "/meals";
  final List<Meal> meals;

  const MealsScreen({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    final String categoryId =
        ModalRoute.of(context)!.settings.arguments as String;
    final List<Meal> categoryMeals =
        meals.where((meal) => meal.categoryId == categoryId).toList();
    final String categoryTitle =
        categories.firstWhere((category) => category.id == categoryId).title;
    return Scaffold(
      appBar: MyAppBar(title: categoryTitle),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemBuilder: (ctx, inx) {
          final Meal meal = categoryMeals[inx];
          return MealItem(
            mealId: meal.id,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
