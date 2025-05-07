import 'package:flutter/material.dart';
import 'package:food/widget/app_bar.dart';
import 'package:food/widget/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = "/filters";
  final Map<String, bool> filters;
  final Function onChange;
  const FiltersScreen(
      {super.key, required this.filters, required this.onChange});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  late Map<String, bool> mutableFilters;
  @override
  void initState() {
    super.initState();
    mutableFilters = widget.filters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Filters"),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Card(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              height: 100,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                "adjust your meals",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                    title: Text("Gluten-Free Meals"),
                    subtitle: Text(
                        "Only include meals without gluten (wheat, barley, etc.)"),
                    value: widget.filters["isGlutenFree"]!,
                    onChanged: (newVal) {
                      mutableFilters["isGlutenFree"] = newVal;
                      widget.onChange(mutableFilters);
                    }),
                SwitchListTile(
                    title: Text("Lactose-Free Meals"),
                    subtitle: Text(
                        "Only include meals without dairy or lactose ingredients"),
                    value: widget.filters["isLactoseFree"]!,
                    onChanged: (newVal) {
                      mutableFilters["isLactoseFree"] = newVal;
                      widget.onChange(mutableFilters);
                    }),
                SwitchListTile(
                    title: Text("Vegan Meals"),
                    subtitle: Text(
                        "Exclude all animal products including meat, dairy, and eggs"),
                    value: widget.filters["isVegan"]!,
                    onChanged: (newVal) {
                      mutableFilters["isVegan"] = newVal;
                      widget.onChange(mutableFilters);
                    }),
                SwitchListTile(
                    title: Text("Vegetarian Meals"),
                    subtitle: Text(
                        "Exclude meat and fish, but may include dairy and eggs"),
                    value: widget.filters["isVegetarian"]!,
                    onChanged: (newVal) {
                      mutableFilters["isVegetarian"] = newVal;
                      widget.onChange(mutableFilters);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
