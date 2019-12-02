import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart.dart';
import 'package:meals_app/meal_item.dart';
import 'package:meals_app/model/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> displayedMeals;
  var _isloadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_isloadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryID = routeArgs['id'];
      displayedMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryID);
      }).toList();
      _isloadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealID) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealID);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemCount: DUMMY_MEALS.length,
          itemBuilder: (BuildContext context, int index) {
            return MealItem(
              id: displayedMeals[index].id,
              title: displayedMeals[index].title,
              imageUrl: displayedMeals[index].imageUrl,
              duration: displayedMeals[index].duration,
              affordability: displayedMeals[index].affordability,
              complexity: displayedMeals[index].complexity,
              removeItem: _removeMeal,
            );
          },
        ));
  }
}
