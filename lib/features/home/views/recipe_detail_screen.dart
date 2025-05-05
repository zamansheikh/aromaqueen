import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/features/home/views/favorite_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RecipeDetailScreen extends StatefulWidget {
  final String title;

  const RecipeDetailScreen({super.key, required this.title});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool noteClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            // Header with logo + close button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo_icon.svg',
                    height: 30,
                    width: 30,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, size: 30, color: Colors.red),
                  ),
                ],
              ),
            ),

            // Hero Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  ImageConstants.onBoardingImage,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Title + Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.title,
                          style: const TextStyle(
                            fontSize: 22,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {
                          final recipe = {
                            "title": widget.title,
                            "image": "assets/images/hotline.jpg",
                          };
                          final isFav = FavoriteManager().isFavorite(recipe);
                          if (isFav) {
                            FavoriteManager().removeFavorite(recipe);
                          } else {
                            FavoriteManager().addFavorite(recipe);
                          }
                          // Trigger rebuild
                          (context as Element).markNeedsBuild();
                        },
                        icon: Icon(
                          FavoriteManager().isFavorite({
                                "title": widget.title,
                                "image": "assets/images/hotline.jpg",
                              })
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.greenAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Treating Acne with Essential Oils\n'
                    'Acne is a skin condition caused by clogged pores and inflammation.\n'
                    'Certain essential oils can help soothe the skin and improve its appearance.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Recipe Card
            if (noteClicked)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header with heart
                        Row(
                          children: const [
                            Text(
                              'Recipe No. 128',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.favorite, color: Colors.greenAccent),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // Recipe fields
                        const Text('Ingredients:\n[Add ingredients here]'),
                        const SizedBox(height: 10),
                        const Text(
                          'Application:\nMix the essential oils and carrier oil.',
                        ),
                        const SizedBox(height: 10),
                        const Text('Tips:\n[Add tips here]'),
                        const SizedBox(height: 10),
                        const Text('Safety:\n[Add safety instructions here]'),
                      ],
                    ),
                  ),
                ),
              )
            else
              Expanded(child: SizedBox()),

            const SizedBox(height: 10),

            // Bottom Note + Search + Delete Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/note.svg',
                    width: 28.w,
                    height: 28.w,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Use the keyword search',
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: SvgPicture.asset(
                            'assets/icons/ok.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset(
                    'assets/icons/delete.svg',
                    width: 24.w,
                    height: 24.w,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
