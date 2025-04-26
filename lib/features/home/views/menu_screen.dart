import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false  ),
      body: PaddingWrapper(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MenuItem(title: 'User Profile'),
          SizedBox(height: 16.0),
          MenuItem(title: 'Expert hotline'),
          SizedBox(height: 16.0),
          MenuItem(title: 'Support'),
          SizedBox(height: 16.0),
          MenuItem(title: 'Contact'),
          SizedBox(height: 16.0),
          MenuItem(title: 'Imprint'),
          SizedBox(height: 16.0),
          MenuItem(title: 'Data Protection'),
        ],
      ), 
      
    )
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  const MenuItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }
}