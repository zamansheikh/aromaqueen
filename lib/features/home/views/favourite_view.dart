import 'package:aromaqueen/core/components/aroma_card.dart';
import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final lcl = AppLocalizations.of(context)!;  
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: PaddingWrapper(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) {
              return GestureDetector(
                onTap: () {
                  showBottomSheetWrapper(title: lcl.favouriteRecipes, child:favouriteRecipesDetails() );
                },
                child: AromaCard(
                  title: 'Favorite recipes',
                  content: 'To Your Favorites',
                  hasStar: false,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}


Widget favouriteRecipesDetails () {
  return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListItem(number: 1, text: 'Acne'),
              const SizedBox(height: 8),
              const ListItem(number: 2, text: 'Fever'),
              const SizedBox(height: 8),
              const ListItem(number: 3, text: 'Face Cream - Rejuvenating'),
              const SizedBox(height: 8),
              const ListItem(number: 4, text: 'Face Cream - Pore Minimizing'),
              const SizedBox(height: 16),
              RecipeCard(),
            ],
          );
}

class ListItem extends StatelessWidget {
  final int number;
  final String text;

  const ListItem({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$number. ',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD0E8E0), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       imageRender(url: ImageConstants.onBoardingImage, width: Get.width, height: 220.h),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recipe No. 128',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.teal[200],
                      size: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                const IngredientItem(number: 1, text: 'xxxxxxx'),
                const IngredientItem(number: 2, text: 'xxxxxxx'),
                const IngredientItem(number: 3, text: 'xxxxxxx'),
                const SizedBox(height: 16),
                const Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                const Text('xxx'),
                const SizedBox(height: 16),
                const Text(
                  'Safety Instructions',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'xxx',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 16),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                   spacing: 8.w,
                    children: [
                      iconRender(url: IconConst.noteIcon),
                      Flexible(child: CustomInputField(controller: TextEditingController(), isCircular: true,)),
                      iconRender(url: IconConst.deleteIcon)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IngredientItem extends StatelessWidget {
  final int number;
  final String text;

  const IngredientItem({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        '$number. $text',
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}