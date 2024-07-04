import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/category.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/mealScreen.dart';

import 'package:meal_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onToggleFavorite});
  final void Function(Meal meal) onToggleFavorite;
  void _selectCategory(BuildContext context, Category category) {
    final filteredmeals = dummyMeals
        .where(
          (meal) => meal.categories.contains(
            category.id,
          ),
        )
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Mealscreen(
          title: category.title,
          meals: filteredmeals,
          onToggleFavorite: (Meal meal) {
            onToggleFavorite(meal);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        //availableCategory.map((category))=>CategoryGridItem(category: category)
        for (final category in availableCategories)
          CategoryGridItem(
            category: category,
            onselect: () {
              _selectCategory(context, category);
            },
          )
      ],
    );
  }
}
