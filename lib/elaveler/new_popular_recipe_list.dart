import 'package:flutter/material.dart';
import 'package:flutter_recipes_app/models/recipe.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPopularRecipeList extends StatefulWidget {
  NewPopularRecipeList({Key? key}) : super(key: key);

  @override
  State<NewPopularRecipeList> createState() => _NewPopularRecipeListState();
}

class _NewPopularRecipeListState extends State<NewPopularRecipeList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: recipes.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              height: 98,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 53.43,
                          width: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/${recipes[index].recipeImage}',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18.56,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                recipes[index].recipeName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF0E0E2D),
                                ),
                              ),
                              Text(
                                '${recipes[index].recipeMaker}\'s recipe',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF9A9DB0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Text(
                          recipes[index].recipeMaker[0],
                          style: TextStyle(color: recipes[index].startColor),
                        ),
                        backgroundColor: recipes[index].endColor,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/icon-share-grey.svg'),
                          const SizedBox(
                            width: 7.65,
                          ),
                          SvgPicture.asset('assets/svg/icon-bookmark-grey.svg'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
