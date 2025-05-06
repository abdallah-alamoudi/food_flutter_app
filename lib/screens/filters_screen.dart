import 'package:flutter/material.dart';
import 'package:food/widget/app_bar.dart';
import 'package:food/widget/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = "/filters";
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Filters"),
      drawer: MainDrawer(),
      body: Container(
        child: Text("filters"),
      ),
    );
  }
}
