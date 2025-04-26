import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/components/custom_input.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Edit Profile"),
      body: PaddingWrapper(
        child: Column(
          spacing: 16.h,
          children: [
            SizedBox(),
            CustomInputField(
              controller: TextEditingController(),
              title: "Full Name",
            ),
            CustomInputField(
              controller: TextEditingController(),
              title: "Nick Name",
            ),
            CustomInputField(
              controller: TextEditingController(),
              title: "Date of Birth",
            ),
            CustomInputField(
              controller: TextEditingController(),
              title: "Email",
            ),
            CustomInputField(
              controller: TextEditingController(),
              title: "Phone",
            ),
            CustomInputField(
              controller: TextEditingController(),
              title: "Address",
            ),
            CustomButton(btnTxt: "Update", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
