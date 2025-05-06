import 'package:flutter/material.dart';
import 'package:food/screens/categories_screen.dart';
import 'package:food/screens/filters_screen.dart';
import 'package:food/screens/meal_details_screen.dart';
import 'package:food/screens/meals_screen.dart';
import 'package:food/screens/tabs_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
        MealsScreen.routeName: (ctx) => MealsScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
    );
  }
}
