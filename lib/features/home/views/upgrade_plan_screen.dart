import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/constants/icon_const.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:aromaqueen/core/utils/icon_render.dart';
import 'package:aromaqueen/core/wrapper/padding_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: "Upgrade Plan"),
      body: PaddingWrapper(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20, width: Get.width),
              iconRender(url: IconConst.premiumIcon, size: 50),
              SizedBox(height: 24),
              Text(
                "Plans and Pricing",
                style: GoogleFonts.roboto(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Upgrade to Pro to unlock all features",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.gray,
                ),
              ),
                   SizedBox(height: 12),
              SubscriptionPricingOptions(),
              SizedBox(height: 12,),
              PremiumBenefitsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscriptionPricingOptions extends StatelessWidget {
  const SubscriptionPricingOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingWrapper(
   
      child: Column(
        children: [
          _buildPricingOption(
            title: 'Weekly',
            price: '\$9.99',
            discount: 'Save 38%',
            isSelected: false,
          ),
          const SizedBox(height: 12.0),
          _buildPricingOption(
            title: 'Monthly',
            price: '\$29.99',
            discount: 'Save 38%',
            isSelected: true,
            isPopular: true,
          ),
          const SizedBox(height: 12.0),
          _buildPricingOption(
            title: 'Annual',
            price: '\$129.99',
            discount: 'Save 38%',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

Widget _buildPricingOption({
  required String title,
  required String price,
  required String discount,
  required bool isSelected,
  bool isPopular = false,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
      border:
          isSelected
              ? Border.all(color: ColorConstants.primary, width: 2.0)
              : Border.all(color: ColorConstants.primaryLight, width: 2.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    discount,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                if (isPopular)
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.green.shade600,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorConstants.primary, width: 2.0),
            color: isSelected ? ColorConstants.primary : Colors.white,
          ),
          child:
              isSelected
                  ? const Icon(Icons.check, size: 16.0, color: Colors.white)
                  : null,
        ),
      ],
    ),
  );
}
class PremiumBenefitsList extends StatelessWidget {
  const PremiumBenefitsList({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enjoy Unlimited Assess to:',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          _buildBenefitItem(
            icon: Icons.campaign_outlined,
            text: 'Ad-free experience',
          ),
          const SizedBox(height: 16.0),
          _buildBenefitItem(
            icon: Icons.article_outlined,
            text: 'Access to exclusive recipes and content',
          ),
          const SizedBox(height: 16.0),
          _buildBenefitItem(
            icon: Icons.local_offer_outlined,
            text: 'Discounts on products and online courses',
          ),
          const SizedBox(height: 16.0),
          _buildBenefitItem(
            icon: Icons.people_outline,
            text: 'Access to expert advice and consultations',
          ),
          const SizedBox(height: 16.0),
          _buildBenefitItem(
            icon: Icons.bolt_outlined,
            text: 'Early access to new features and promotions',
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitItem({required IconData icon, required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Icon(
            icon,
            size: 22.0,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}