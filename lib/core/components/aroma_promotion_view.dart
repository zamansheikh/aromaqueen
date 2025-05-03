import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:flutter/material.dart';

class PromoteAromaQueenScreen extends StatelessWidget {
  const PromoteAromaQueenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Image.asset(ImageConstants.logo, height: 40),
                  const Spacer(),
                  const Icon(Icons.menu, size: 30),
                ],
              ),
            ),

            // Promo Image
            Image.asset(
              ImageConstants.onBoardingImage,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // Promotion Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "You think AromaQueen is a great idea and want to boost your pocket money?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Then promote AromaQueen!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Register today in our partner program: (Link)",
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Register Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Add register logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA3D9C6), // soft green
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Text(
                  "Register Now",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Income Section
            Center(
              child: Column(
                children: const [
                  Text(
                    "Your income",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "EUR 1000.-",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
