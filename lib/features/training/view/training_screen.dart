// training_page.dart
import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/training_controller.dart';

class TrainingView extends StatelessWidget {
  final TrainingController controller = Get.put(TrainingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FDF8), // matches your theme
     appBar: customAppbar2(),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.courses.length,
          itemBuilder: (context, index) {
            final course = controller.courses[index];
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                      child: Image.network(
                        course.imageUrl,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            course.description,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.tryParse(course.courseUrl) ?? Uri();
                                try {
                                  if (url.hasScheme && await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    Get.snackbar("Error", "Invalid or unsupported course URL.");
                                  }
                                } catch (e) {
                                  Get.snackbar("Error", "Could not open course URL: $e");
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF64C29E), // soft green
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: const Text("View This Course", style: TextStyle(color: Colors.black),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
