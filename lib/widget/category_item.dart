import 'package:flutter/material.dart';
import 'package:food/models/food_category.dart';
import 'package:food/screens/meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final FoodCategory category;
  const CategoryItem({super.key, required this.category});
  navigateToMeals(ctx) {
    Navigator.of(ctx).pushNamed(MealsScreen.routeName, arguments: category.id);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: category.color,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          navigateToMeals(context);
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: FittedBox(
              child: Text(
                category.title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
