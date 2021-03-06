import 'package:MahaBelly/networking/recipe_response.dart';
import 'package:MahaBelly/view/recipeList/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  final List<Recipe> list;
  final ScrollController scrollController;
  final Function getMoreData;
  RecipeList({this.list, this.scrollController, this.getMoreData});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return RecipeCard(
          recipe: list[index],
          title: list[index].title,
          imageURI: list[index].imageURI,
        );
      },
    );
  }
}
