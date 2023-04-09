import 'package:flutter/material.dart';
import 'package:refeicoes_flutter/models/meal.dart';
import 'package:refeicoes_flutter/screens/favorite_meal/favorite_screen.dart';
import 'package:refeicoes_flutter/screens/general_category/categories_screen.dart';

class CloneScreen extends StatelessWidget {
  final int index;
  final List<Meal> favoriteMeals;

  CloneScreen(this.index, this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: index == 0
          ? CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      CategoriesScreen(),
                    ],
                  ),
                ),
              ],
            )
          : ListView(
              children: [
                FavoriteScreen(favoriteMeals),
              ],
            ),
    );
  }
}
