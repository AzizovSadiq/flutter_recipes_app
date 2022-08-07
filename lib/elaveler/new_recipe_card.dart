import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/recipe.dart';

class NewRecipeCard extends StatelessWidget {
  const NewRecipeCard({Key? key, this.active, this.index, this.recipe})
      : super(key: key);
  final bool? active;
  final int? index;
  final Recipe? recipe;
  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 16 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 30;
    final double bottom = active! ? 0 : 30;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: 15.5,
        left: active! ? 32.5 : 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: recipe!.startColor,
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(0.1),
              blurRadius: blur,
              offset: Offset(0, offset))
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/${recipe!.recipeImage}'),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
                top: 10,
              ),
              height: 87,
              decoration: BoxDecoration(
                color: recipe!.startColor!.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
              ),
              child: Text(
                recipe!.recipeName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            bottom: 88,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.5, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Text(
                      'Recipes',
                      style: TextStyle(fontSize: 13, color: recipe!.startColor),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.share,
                        color: recipe!.startColor,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Icon(Icons.bookmark, color: recipe!.startColor)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
