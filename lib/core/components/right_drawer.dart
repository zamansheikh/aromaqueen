// right_drawer.dart
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/features/home/views/payment_view.dart';
import 'package:aromaqueen/features/home/views/privacy_policy_screen.dart';
import 'package:aromaqueen/features/home/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwipeDismissiblePage extends StatelessWidget {
  const SwipeDismissiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      onDismissed: () => Navigator.of(context).pop(),
      direction: DismissDirection.startToEnd, // Swipe right to go back
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo + Menu Row
                Row(
                  children: [
                    Image.asset(ImageConstants.logo, height: 40),
                    const Spacer(),
                    const Icon(Icons.menu, size: 30),
                  ],
                ),
                const SizedBox(height: 30),

                // Menu List
                menuItem(
                  'User Profile',
                  onTap: () {
                    Get.to(ProfileScreen());
                  },
                ),
                menuItem('Expert hotline'),
                menuItem('Support'),
                menuItem('Contact'),

                menuItem(
                  'Imprint- PaymentPageIncluded here',
                  onTap: () {
                    Get.to(const PaymentRenewScreen());
                  },
                ),
                menuItem(
                  'Data Protection',
                  onTap: () {
                    Get.to(() => PrivacyPolicyScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuItem(String title, {Function()? onTap}) {
    return GestureDetector(
      onTap:
          onTap ??
          () {
            print('$title tapped!');
          },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class DismissiblePage extends StatelessWidget {
  final Widget child;
  final VoidCallback onDismissed;
  final DismissDirection direction;

  const DismissiblePage({
    super.key,
    required this.child,
    required this.onDismissed,
    this.direction = DismissDirection.startToEnd,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (direction == DismissDirection.startToEnd &&
            details.primaryVelocity! > 0) {
          onDismissed();
        }
      },
      child: child,
    );
  }
}
