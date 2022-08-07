import 'package:flutter/material.dart';
import 'package:flutter_recipes_app/elaveler/new_pageview_recipe_list.dart';
import 'package:flutter_recipes_app/elaveler/new_popular_recipe_list.dart';
import 'package:flutter_recipes_app/models/recipe.dart';
import 'package:flutter_svg/svg.dart';

class NewHomeScreen extends StatelessWidget {
  const NewHomeScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe7eefb),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5, vertical: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recipes',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0E0E2D),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xFF0E0E2D),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          NewPageViewRecipeList(),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.5, vertical: 12),
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/icon-popular.svg'),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  'Popular',
                  style: TextStyle(
                    color: Color(0xffF9AE89),
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          NewPopularRecipeList(),
        ],
      ),
    );
  }
}
