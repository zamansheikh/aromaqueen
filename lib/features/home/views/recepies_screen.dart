import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/bottom_sheet_wrapper.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar2(hasNewsFeed: false),
      body: PaddingWrapper(
        child: Column(
          spacing: 24.h,
          children: [
            CustomInputField(
              controller: TextEditingController(),
              hintText: "Use the keyword search",
              isCircular: true,
              postfixIcon: IconConst.searchIcon,
            ),
            contactHotline(context, varient: 2),
            WellnessCategory(),
            MultipleChoiceOptions(),
          
          ],
        ),
      ),
    );
  }
}

class WellnessCategory extends StatelessWidget {
  const WellnessCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.h,
      runSpacing: 8.h,
      children: [
        _buildCategory("Gesundheit"),
        _buildCategory("Feel good"),
        _buildCategory("Feel good"),
        _buildCategory("Beauty"),
        _buildCategory("Haushalt"),
        _buildCategory("Kinder (Upgrade)"),
        _buildCategory("Senioren (Upgrade)"),
        _buildCategory("Tiere (Upgrade)"),
        _buildCategory("Hormon-Balance (Upgrade)"),
        _buildCategory("Aroma Massagen (Upgrade)"),
        _buildCategory("Aura/Chakra (Upgrade)"),
        _buildCategory("Meditation/ Yoga (Upgrade)"),
      ],
    );
  }

  Widget _buildCategory(name) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 10.h),
      constraints: BoxConstraints(maxWidth: 110.w),
      decoration: BoxDecoration(color: ColorConstants.lightGray),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 12.sp),
        ),
      ),
    );
  }
}

class MultipleChoiceOptions extends StatelessWidget {
  const MultipleChoiceOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        OptionItem(letter: 'A', text: 'Akne'),
        SizedBox(height: 12),
        OptionItem(letter: 'B', text: 'Angina'),
        SizedBox(height: 12),
        OptionItem(letter: 'C', text: 'Herpes'),
        SizedBox(height: 12),
        OptionItem(letter: 'D', text: 'Husten'),
        SizedBox(height: 12),
        OptionItem(letter: 'E', text: 'Warzen'),
      ],
    );
  }
}

class OptionItem extends StatelessWidget {
  final String letter;
  final String text;

  const OptionItem({super.key, required this.letter, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheetWrapper(
          title: "",
          child: Column(
            spacing: 12.h,
            children: [
              imageRender(
                url: ImageConstants.onBoardingImage,
                width: Get.width,
                height: 180.h,
              ),
                AcneInfoCard(),
            ],
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$letter. ',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


class AcneInfoCard extends StatelessWidget {
  const AcneInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            'Akne',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Treating Acne with Essential Oils',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Acne is a skin condition caused by clogged pores and inflammation.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Certain essential oils can help soothe the skin and improve its appearance.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}