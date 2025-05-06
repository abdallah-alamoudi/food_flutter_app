import 'package:flutter/material.dart';
import 'package:food/screens/categories_screen.dart';
import 'package:food/screens/fav_screen.dart';
import 'package:food/widget/app_bar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currIndex = 0;
  _navigate(int index) {
    setState(() {
      _currIndex = index;
    });
  }

  final List<Map<String, dynamic>> _pages = [
    {"page": CategoriesScreen(), "title": "Categories"},
    {"page": FavoriteScreen(), "title": "Favorite"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "meals"),
      body: _pages[_currIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
        ],
        onTap: _navigate,
        currentIndex: _currIndex,
      ),
    );
  }
}
