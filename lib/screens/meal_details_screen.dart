import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart.dart';

class MealDetailsScreen extends StatelessWidget {
  static const String routeName = '/meal-details';
  @override
  Widget build(BuildContext context) {
    final mealID = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealID);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.title}'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child:
                  Text('Ingredients', style: Theme.of(context).textTheme.title),
            ),
            ListView()
          ],
        ));
  }
}
