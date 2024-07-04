import 'package:flutter/material.dart';
import 'package:meal_app/widgets/custom_filter.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var _gluteenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegeterianFreeFilterSet = false;
  var _veganFreeFilterSet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'meals') {}
      // }),
      body: Column(
        children: [
          CustomFilter(
            filterset: _gluteenFreeFilterSet,
            filterText: 'Gluteen-Free',
            filterSubText: 'Gluteen-Free',
          ),
          CustomFilter(
            filterset: _lactoseFreeFilterSet,
            filterText: 'Lactose-Free',
            filterSubText: 'Lactose-Free',
          ),
          CustomFilter(
            filterset: _vegeterianFreeFilterSet,
            filterText: 'Vegeterian-Free',
            filterSubText: 'Vegeterian-Free',
          ),
          CustomFilter(
            filterset: _veganFreeFilterSet,
            filterText: 'Vegan-Free',
            filterSubText: 'Vegan-Free',
          ),
        ],
      ),
    );
  }
}
