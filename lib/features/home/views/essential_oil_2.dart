import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/home/views/home_view.dart';
import 'package:aromaqueen/features/home/views/recepies_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EssentialOil2 extends StatelessWidget {
  const EssentialOil2({super.key});

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