import 'package:aromaqueen/core/config/app_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradePlanScreen extends StatefulWidget {
  const UpgradePlanScreen({Key? key}) : super(key: key);

  @override
  State<UpgradePlanScreen> createState() => _UpgradePlanScreenState();
}

class _UpgradePlanScreenState extends State<UpgradePlanScreen> {
  int selectedIndex = 1;

  final List<Map<String, dynamic>> plans = [
    {'label': 'Weekly', 'price': '\$9.99', 'savings': 'Save 38%'},
    {
      'label': 'Monthly',
      'price': '\$29.99',
      'savings': 'Save 38%',
      'popular': true,
    },
    {'label': 'Annual', 'price': '\$129.99', 'savings': 'Save 38%'},
  ];

  final List<Map<String, dynamic>> benefits = [
    {'icon': Icons.campaign_outlined, 'text': 'Ad-free experience'},
    {
      'icon': Icons.receipt_long_outlined,
      'text': 'Access to exclusive recipes and content',
    },
    {
      'icon': Icons.discount_outlined,
      'text': 'Discounts on products and online courses',
    },
    {
      'icon': Icons.support_agent_outlined,
      'text': 'Access to expert advice and consultations',
    },
    {
      'icon': Icons.new_releases_outlined,
      'text': 'Early access to new features and promotions',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upgrade Plan'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(height: 24),
            Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.orangeAccent,
                child: const Icon(Icons.star, size: 36, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Plans and Pricing',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text(
                'Upgrade to Pro to unlock all features',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 24),

            // Plan Options
            ...List.generate(plans.length, (index) {
              final plan = plans[index];
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected ? Colors.green : Colors.grey.shade300,
                      width: isSelected ? 2 : 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color:
                        isSelected
                            ? Colors.green.withOpacity(0.05)
                            : Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              plan['label'],
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  '${plan['price']}',
                                  style: const TextStyle(
                                    color: ColorConstants.dark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '•',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  '${plan['savings']}',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (plan['popular'] == true)
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Popular',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        color: isSelected ? Colors.green : Colors.grey,
                      ),
                    ],
                  ),
                ),
              );
            }),

            const SizedBox(height: 16),
            const Text(
              'Enjoy Unlimited Access to:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Benefits
            ...benefits.map(
              (b) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Icon(b['icon'], color: Colors.black87),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        b['text'],
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
