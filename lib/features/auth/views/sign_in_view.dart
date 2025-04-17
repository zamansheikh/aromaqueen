import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddingWrapper(
        child: ListView(
          // List view with reverse = true is
          // taken to start the widgets bottm up
          // the default is top to bottom
          reverse: true,
          children: [
            Column(
              children: [
                iconRender(url: IconConst.logoIcon, size: 120),
                Text(
                  "Login to your Account",
                  style: GoogleFonts.roboto(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w700,
                    color: ColorConstants.dark,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
