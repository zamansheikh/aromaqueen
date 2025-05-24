import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  void _launchCommunityUrl() async {
    const url = 'https://www.udemy.com/course/diploma-in-luxury-facial-facial-machines-chemical-peeling/'; // 🔁 Replace with your actual community URL
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(),
      backgroundColor: const Color(0xFFF2FDF8), // soft background if desired
      body: Center(
        child: ElevatedButton(
          onPressed: _launchCommunityUrl,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF64C29E), // matching green style
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Go to Community',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
