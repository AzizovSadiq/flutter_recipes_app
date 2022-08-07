import 'package:flutter/material.dart';
import 'package:flutter_recipes_app/elaveler/new_recipe_card.dart';
import 'package:flutter_recipes_app/models/recipe.dart';

class NewPageViewRecipeList extends StatefulWidget {
  NewPageViewRecipeList({Key? key}) : super(key: key);

  @override
  State<NewPageViewRecipeList> createState() => _NewPageViewRecipeListState();
}

class _NewPageViewRecipeListState extends State<NewPageViewRecipeList> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.53,
      child: PageView.builder(
          padEnds: false,
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            bool active = index == currentPage;
            return Opacity(
              opacity: currentPage == index ? 1.0 : 0.5,
              child: NewRecipeCard(
                active: active,
                index: index,
                recipe: recipes[index],
              ),
            );
          },),
         
          
    );
  }

  @override
  void initState() {
    super.initState();

    pageController.addListener(
      () {
        int position = pageController.page!.round();
        if (currentPage != position) {
          setState(
            () {
              currentPage = position;
            },
          );
        }
      },
    );
  }
}

