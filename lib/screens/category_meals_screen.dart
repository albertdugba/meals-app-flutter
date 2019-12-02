import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart.dart';
import 'package:meals_app/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    // final categoryID = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS;
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemCount: DUMMY_MEALS.length,
          itemBuilder: (BuildContext context, int index) {
            return MealItem(
              id: categoryMeal[index].id,
              title: categoryMeal[index].title,
              imageUrl: categoryMeal[index].imageUrl,
              duration: categoryMeal[index].duration,
              affordability: categoryMeal[index].affordability,
              complexity: categoryMeal[index].complexity,
            );
          },
        ));
  }
}
