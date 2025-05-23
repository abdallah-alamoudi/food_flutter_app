import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/models/food_category.dart';
import 'package:food/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = "/categories";
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        FoodCategory category = categories[index];
        return CategoryItem(category: category);
      },
    );
  }
}
