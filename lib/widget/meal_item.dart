import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/models/meal.dart';
import 'package:food/screens/meal_details_screen.dart';

class MealItem extends StatelessWidget {
  final String mealId;
  const MealItem({super.key, required this.mealId});

  @override
  Widget build(BuildContext context) {
    final Meal meal = meals.firstWhere((meal) => meal.id == mealId);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(MealDetailsScreen.routeName, arguments: mealId);
          },
          borderRadius: BorderRadius.circular(30),
          splashColor: Theme.of(context).primaryColor.withAlpha(10),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.restaurant,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            meal.title,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.restaurant_menu,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            meal.complexity.name,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            meal.affordability.name,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
