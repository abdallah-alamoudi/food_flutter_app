import 'package:flutter/material.dart';
import 'package:food/dummy_data.dart';
import 'package:food/models/meal.dart';
import 'package:food/screens/categories_screen.dart';
import 'package:food/screens/filters_screen.dart';
import 'package:food/screens/meal_details_screen.dart';
import 'package:food/screens/meals_screen.dart';
import 'package:food/screens/tabs_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Meal> availableMeals = meals;
  Map<String, bool> _filters = {
    "isGlutenFree": false,
    "isLactoseFree": false,
    "isVegan": false,
    "isVegetarian": false,
  };
  void _setFilters(Map<String, bool> newFilters) {
    setState(() {
      _filters = newFilters;
      availableMeals = meals.where((meal) {
        if (_filters["isGlutenFree"]! && !meal.isGlutenFree) {
          return false;
        }
        if (_filters["isLactoseFree"]! && !meal.isLactoseFree) {
          return false;
        }
        if (_filters["isVegan"]! && !meal.isVegan) {
          return false;
        }
        if (_filters["isVegetarian"]! && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff413C58)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 32.0,
          backgroundColor: Color(0xff413C58),
        ),
        primarySwatch: Colors.amber,
        primaryColor: Colors.blueAccent[200],
        colorScheme: ColorScheme.light(
          primary: Color(0xffC4FFB2),
          secondary: Color(0xffCD5334),
          onPrimary: Color(0xff17BEBB),
          surface: Color(0xffEDB88B),
        ),
      ),
      title: "food",
      routes: {
        "/": (ctx) => TabsScreen(),
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        MealsScreen.routeName: (ctx) => MealsScreen(
              meals: availableMeals,
            ),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(
              filters: _filters,
              onChange: _setFilters,
            ),
      },
    );
  }
}
