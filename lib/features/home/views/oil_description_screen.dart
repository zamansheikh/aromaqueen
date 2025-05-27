import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OilDescriptionScreen extends StatelessWidget {
  final String? oilName; // Optional parameter for oil name
  const OilDescriptionScreen({super.key, this.oilName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: oilName ?? 'Oil Description'),
      backgroundColor: ColorConstants.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Description
            _buildDescriptionCard(
              title: "Beschreibung",
              content: "Das ätherische Öl der Bitterorange wird hauptsächlich durch Kaltpressung der Schale gewonnen. Es hat einen kräftigen, frischen, leicht herben Zitrusduft.",
            ),
            
            SizedBox(height: 16.h),
            
            // Main Applications
            _buildBulletPointCard(
              title: "Wichtigste Anwendungsgebiete in der Aromatherapie",
              points: [
                "Belebung und Erfrischung",
                "Unterstützung bei Konzentrationsschwäche", 
                "Stimmungsaufhellung bei Melancholie und Stress",
                "Förderung der Verdauung",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Physical Effects
            _buildBulletPointCard(
              title: "Körperliche Haupt-Wirkungen",
              points: [
                "Anregend und durchblutungsfördernd",
                "Verdauungsfördernd",
                "Krampflösend",
                "Entzündungshemmend",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Emotional Effects
            _buildBulletPointCard(
              title: "Seelische Haupt-Wirkungen",
              points: [
                "Stimmungsaufhellend",
                "Konzentrationsfördernd",
                "Stressmindernd",
                "Belebend",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Chakra
            _buildDescriptionCard(
              title: "Chakra",
              content: "Solarplexus-Chakra (Energiezentrum für Selbstbewusstsein und Willenskraft)",
            ),
            
            SizedBox(height: 16.h),
            
            // Main Applications
            _buildBulletPointCard(
              title: "Hauptanwendungen",
              points: [
                "Aromadiffusor bei Müdigkeit und Konzentrationsproblemen",
                "Massageöl bei Muskelverspannungen und Verdauungsbeschwerden",
                "Hautpflege zur Anregung der Durchblutung (verdünnt verwenden)",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Shelf Life
            _buildDescriptionCard(
              title: "Haltbarkeit nach Öffnen",
              content: "Ca. 12 Monate, kühl und dunkel lagern",
            ),
            
            SizedBox(height: 16.h),
            
            // Scent Profile
            _buildDescriptionCard(
              title: "Duftnote",
              content: "Frisch, zitrisch, herb, leicht würzig",
            ),
            
            SizedBox(height: 16.h),
            
            // Compatible Oils
            _buildBulletPointCard(
              title: "Passende Öle für Duftmischungen",
              points: [
                "Lavendel",
                "Zitrone", 
                "Bergamotte",
                "Rosmarin",
                "Pfefferminze",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Safety Information
            _buildSafetyCard(
              title: "Sicherheit",
              points: [
                "Kann fototoxisch sein (auf die Haut aufgetragen, Sonnenexposition vermeiden)",
                "Nicht unverdünnt auf empfindliche Haut auftragen",
                "Nicht für Schwangere und Kinder unter 6 Jahren empfohlen",
              ],
            ),
            
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionCard({required String title, required String content}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorConstants.primaryLight,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorConstants.primary.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: ColorConstants.primaryDark,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            content,
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.dark,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPointCard({required String title, required List<String> points}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorConstants.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorConstants.lightGray),
        boxShadow: [
          BoxShadow(
            color: ColorConstants.gray.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.dark,
            ),
          ),
          SizedBox(height: 12.h),
          ...points.map((point) => Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.h, right: 8.w),
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        point,
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.dark,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              )).toList(),
        ],
      ),
    );
  }

  Widget _buildSafetyCard({required String title, required List<String> points}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: ColorConstants.danger.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorConstants.danger.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: ColorConstants.danger,
                size: 20.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.danger,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ...points.map((point) => Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6.h, right: 8.w),
                      width: 6.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.danger,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        point,
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorConstants.dark,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              )).toList(),
        ],
      ),
    );
  }
}