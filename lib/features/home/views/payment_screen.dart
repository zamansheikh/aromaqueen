import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/components/custom_button.dart';
import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/core/utils/image_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:aromaqueen/features/home/views/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Payment"),
      body: PaddingWrapper(
        child: Column(
          children: [
            SizedBox(height: 20),
            imageRender(
              url: ImageConstants.cardImage,
              width: Get.width,
              height: 220,
              borderRadius: 12,
            ),
            SizedBox(height: 20),
            PremiumRenewalNotification(),
            Spacer(),
            CustomButton(btnTxt: 'Update Payment', onPressed: (){
              Get.to(()=> UpgradePlanScreen());
            }),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}

class PremiumRenewalNotification extends StatelessWidget {
  const PremiumRenewalNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Renew yours',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Premium access',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.0),
        Text(
          'There seems to be a problem with your payment. Update your payment method to take advantage of premium benefits.',
          style: TextStyle(fontSize: 16.0, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
