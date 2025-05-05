import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';

void showPlantDetailSheet(BuildContext context, String plantName) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (_) => PlantDetailBottomSheet(plantName: plantName),
  );
}

class PlantDetailBottomSheet extends StatefulWidget {
  final String plantName;

  const PlantDetailBottomSheet({super.key, required this.plantName});

  @override
  State<PlantDetailBottomSheet> createState() => _PlantDetailBottomSheetState();
}

class _PlantDetailBottomSheetState extends State<PlantDetailBottomSheet> {
  int selectedTabIndex = 0;

  final List<String> tabs = ["Beschreibung", "Steckbrief", "Rezepte"];
  final List<String> dummyTexts = [
    "Description of the plant goes here...",
    "Profile info goes here...",
    "Recipe info goes here...",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Row
          Row(
            children: [
              Image.asset(ImageConstants.logo, height: 30), // adjust path
              const Spacer(),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.red),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              ImageConstants.onBoardingImage,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          // Tabs
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
                tabs.asMap().entries.map((entry) {
                  final index = entry.key;
                  final label = entry.value;
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => selectedTabIndex = index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color:
                              selectedTabIndex == index
                                  ? ColorConstants.primary
                                  : ColorConstants.lightGray,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            label,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.dark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),

          const SizedBox(height: 16),

          // Text Area
          Container(
            padding: const EdgeInsets.all(12),
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            width: double.infinity,
            child: Text(
              dummyTexts[selectedTabIndex],
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
