import 'package:flutter/material.dart';
import 'package:food/screens/categories_screen.dart';
import 'package:food/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(
      BuildContext context, String title, void Function()? onTab) {
    return Column(children: [
      ListTile(
        leading: Icon(Icons.restaurant),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onTap: onTab,
      ),
      Divider(
        color: const Color.fromARGB(255, 100, 100, 100),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              "cooking up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          buildListTile(context, "Meals", () {
            Navigator.of(context).pushNamedAndRemoveUntil("/", (_) => false);
          }),
          buildListTile(context, "Filters", () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil(FiltersScreen.routeName, (_) => false);
          })
        ],
      ),
    );
  }
}
