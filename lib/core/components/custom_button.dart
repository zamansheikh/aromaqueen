import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.widthFactor = 1,
    this.borderRadius,
    required this.btnTxt,
    required this.onPressed,
  });
  final double widthFactor;
  final BorderRadius? borderRadius;
  final String btnTxt;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: borderRadius ?? BorderRadius.circular(100.r),
      onTap: onPressed,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(100.r),
            color: ColorConstants.primary,
          ),
          child: Text(
            btnTxt,
            style: TextStyle(
              color: ColorConstants.dark,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),

            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
