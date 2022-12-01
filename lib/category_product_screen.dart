import 'package:flutter/material.dart';
import 'clothe_item.dart';
import 'data.dart';

class CategoryProductScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  const CategoryProductScreen(
      this.categoryId,
      this.categoryTitle, {super.key}
      );

  @override
  Widget build(BuildContext context) {
    final routeArgs =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = dummy_clothes.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
