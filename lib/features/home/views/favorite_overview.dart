import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'favorite_manager.dart'; // your shared list of recipes

class FavoritesOverviewScreen extends StatelessWidget {
  const FavoritesOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = FavoriteManager().favorites;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo & close button
              Row(
                children: [
                  Image.asset(ImageConstants.hotline, height: 30),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, color: Colors.red, size: 30),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              const Text(
                "Your Favorite Recipes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Clickable recipe list
              ...List.generate(favorites.length, (index) {
                final recipe = favorites[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: GestureDetector(
                    onTap: () {
                      // You can navigate to full recipe screen if needed
                    },
                    child: Text(
                      '${index + 1}. ${recipe["title"]}',
                      style: const TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }),

              const SizedBox(height: 20),

              // Recipe Card (for preview)
              if (favorites.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        favorites.first["image"]!,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title + Heart
                            Row(
                              children: const [
                                Text(
                                  "Recipe No. 128",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.favorite, color: Colors.greenAccent),
                              ],
                            ),
                            const SizedBox(height: 10),

                            // Ingredients
                            const Text(
                              "Ingredients",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text("1. xxxxxxx\n2. xxxxxxx\n3. xxxxxxx"),
                            const SizedBox(height: 10),

                            // Instructions
                            const Text(
                              "Instructions",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text("xxx"),

                            const SizedBox(height: 10),

                            // Safety
                            const Text(
                              "Safety Instructions",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text("xxx"),
                          ],
                        ),
                      ),

                      // Bottom input section
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 10,
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.edit_note, size: 28),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
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
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 28,
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.delete_outline, size: 28),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
