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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "RobotoCondensed",
          colorScheme: ColorScheme.light(
            error: Color(0xff902D41),
            primary: Color(0xff13505B),
            secondary: Color(0xffA5243D),
            brightness: Brightness.light,
            surface: Color(0xffFFFFF2),
            onSecondary: Color(0xffDE6449),
            onPrimary: Color(0xff040404),
            onSurface: Color(0xff040404),
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xff13505B),
              elevation: 10,
              shadowColor: Colors.black,
              centerTitle: true,
              foregroundColor: Color(0xff040404),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.vertical(
                bottom: Radius.circular(20),
              )))),
      title: "Foody",
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
