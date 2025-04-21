import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EssentialOilView extends StatelessWidget {
  const EssentialOilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
             
               CustomInputField(controller: TextEditingController(), hintText: "Use the keyword search", isCircular: true,),
              const SizedBox(height: 16.0),
        
              Expanded(
                child: ListView(
                  children: const [
                    SearchSuggestionTile(text: 'Recipe: Rubbing Application'),
                    SearchSuggestionTile(text: 'Recipe: Compress'),
                    SearchSuggestionTile(text: 'Recipe: Wrap'),
                    SearchSuggestionTile(text: 'Essential Oil'),
                    SearchSuggestionTile(text: 'Recipe: Rubbing Application'),
                    SearchSuggestionTile(text: 'Recipe: Rubbing Application'),
                    SearchSuggestionTile(text: 'Recipe: Rubbing Application'),
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

// Widget for each suggestion tile
class SearchSuggestionTile extends StatelessWidget {
  final String text;

  const SearchSuggestionTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style:  GoogleFonts.roboto(fontSize: 18.sp, color: ColorConstants.darkGray, fontWeight: FontWeight.w500),
      ),
    );
  }
}