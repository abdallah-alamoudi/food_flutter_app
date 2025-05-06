import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/models/meal.dart';
import 'package:food/widget/app_bar.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = "/meal-details";
  const MealDetailsScreen({super.key});

  Widget buildMealDetail(BuildContext context, String title, Widget child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        child
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;
    final Meal meal = meals.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: MyAppBar(title: meal.title),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    meal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 250,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          buildMealDetail(
                            context,
                            "Title",
                            Text(
                              meal.title,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          buildMealDetail(
                            context,
                            "Description",
                            Text(
                              meal.description,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          buildMealDetail(
                            context,
                            "Ingredients",
                            SizedBox(
                              height: 150,
                              width: 250,
                              child: Card(
                                elevation: 10,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(0),
                                    itemBuilder: (ctx, inx) {
                                      final ingredient = meal.ingredients[inx];
                                      return Column(
                                        children: [
                                          if (inx != 0)
                                            Divider(
                                              color: Color(0xffcccccc),
                                            ),
                                          Text(ingredient),
                                        ],
                                      );
                                    },
                                    itemCount: meal.ingredients.length,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          buildMealDetail(
                            context,
                            "Steps",
                            SizedBox(
                              height: 150,
                              width: 250,
                              child: Card(
                                elevation: 10,
                                color: Colors.white,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: ListView.builder(
                                    padding: EdgeInsets.all(0),
                                    itemBuilder: (ctx, inx) {
                                      final step = meal.steps[inx];
                                      return Column(
                                        children: [
                                          if (inx != 0)
                                            Divider(
                                              color: Color(0xffcccccc),
                                            ),
                                          Text(step),
                                        ],
                                      );
                                    },
                                    itemCount: meal.steps.length,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
