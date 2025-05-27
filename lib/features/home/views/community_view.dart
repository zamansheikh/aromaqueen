import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Community SVG Icon
            Container(
              width: 120.w,
              height: 120.h,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/icons/community.svg',
                width: 80.w,
                height: 80.h,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF64C29E),
                  BlendMode.srcIn,
                ),
              ),
            ),
            
            SizedBox(height: 30.h),
            
            // Title
            Text(
              'Join Our Community',
              style: TextStyle(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2D5F5D),
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 15.h),
            
            // Description
            Text(
              'Connect with fellow aromatherapy enthusiasts,\nshare experiences, and learn from experts\nin our vibrant community.',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFF6B7280),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 40.h),
            
            // Community Button
            ElevatedButton(
              onPressed: _launchCommunityUrl,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF64C29E),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
                elevation: 5,
                shadowColor: const Color(0xFF64C29E).withOpacity(0.3),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.group_outlined,
                    size: 20.sp,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'View Community',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 30.h),
            
            // // Features Cards
            // Row(
            //   children: [
            //     Expanded(
            //       child: _buildFeatureCard(
            //         icon: Icons.chat_bubble_outline,
            //         title: 'Discussions',
            //         description: 'Share tips & experiences',
            //       ),
            //     ),
            //     SizedBox(width: 15.w),
            //     Expanded(
            //       child: _buildFeatureCard(
            //         icon: Icons.school_outlined,
            //         title: 'Learn',
            //         description: 'Expert-led courses',
            //       ),
            //     ),
            //     SizedBox(width: 15.w),
            //     Expanded(
            //       child: _buildFeatureCard(
            //         icon: Icons.favorite_border,
            //         title: 'Connect',
            //         description: 'Meet like-minded people',
            //       ),
            //     ),
            //   ],
            // ),
          
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: const Color(0xFF64C29E).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF64C29E),
              size: 24.sp,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D5F5D),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            style: TextStyle(
              fontSize: 11.sp,
              color: const Color(0xFF6B7280),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
