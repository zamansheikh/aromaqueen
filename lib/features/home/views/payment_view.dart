import 'package:aromaqueen/features/home/views/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentRenewScreen extends StatelessWidget {
  const PaymentRenewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        title: const Text("Payment", style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),

            // Card Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/card_sample.png', // Replace with your image path
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),

            const SizedBox(height: 30),

            // Heading
            const Text(
              "Renew yours\nPremium access",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 20),

            // Description
            const Text(
              "There seems to be a problem  with your\npayment. Update  your payment method to take\nadvantage of premium  benefits.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                height: 1.6,
              ),
            ),

            const Spacer(),

            // Update Payment Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => UpgradePlanScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA3D9C6),
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  elevation: 8,
                  shadowColor: Colors.black12,
                ),
                child: const Text(
                  "Update Payment",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
