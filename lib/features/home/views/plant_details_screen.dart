import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantDetailsScreen extends StatelessWidget {
  final String? plantName; // Optional parameter for oil name
  const PlantDetailsScreen({super.key, this.plantName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: plantName ?? 'Plant Details'),
      backgroundColor: ColorConstants.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [            // Main Description
            _buildDescriptionCard(
              title: "Beschreibung",
              content: "Die Bitterorange, auch Pomeranze genannt, ist ein immergrüner, kleiner Baum oder großer Strauch aus der Familie der Rautengewächse (Rutaceae). Er kann bis zu 10 Meter hoch werden und trägt glänzend grüne, ledrige Blätter mit geflügelten Blattstielen. Die weißen Blüten sind intensiv duftend und erscheinen meist im Frühjahr.",
            ),
            
            SizedBox(height: 16.h),
            
            // Origin and Distribution
            _buildDescriptionCard(
              title: "Herkunft und Verbreitung",
              content: "Die Bitterorange stammt ursprünglich aus Südostasien, wurde aber bereits im 10. Jahrhundert in den Mittelmeerraum eingeführt. Heute wächst sie wild oder kultiviert in vielen warmen Regionen, insbesondere rund um das Mittelmeer, in Indien, Afrika und Lateinamerika.",
            ),
            
            SizedBox(height: 16.h),
            
            // Fruit Description
            _buildDescriptionCard(
              title: "Früchte",
              content: "Die Früchte ähneln äußerlich der Süßorange, sind jedoch kleiner, rauer und besitzen einen deutlich bitteren Geschmack. Die Schale ist dick und enthält reichlich ätherisches Öl. Obwohl die Frucht roh ungenießbar ist, wird sie für Marmelade (z.B. englische Orangenmarmelade) oder für die Herstellung ätherischer Öle genutzt.",
            ),
            
            SizedBox(height: 16.h),
            
            // Botanical Information
            _buildBulletPointCard(
              title: "Botanische Informationen",
              points: [
                "Synonym: Bitterorange, Pomeranze",
                "Botanischer Name: Citrus aurantium", 
                "Botanische Familie: Rutaceae (Rautengewächse)",
                "Pflanzenteil(e): Schale der Frucht",
                "Herkunft: Mittelmeerraum, Südostasien",
                "Gewinnung: Kaltpressung der Fruchtschale",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Main Components
            _buildMainComponentsCard(),
            
            SizedBox(height: 16.h),
            
            // Pharmacological Terms
            _buildBulletPointCard(
              title: "Pharmakologische Begriffe",
              points: [
                "Phototoxizität",
                "Krampflösend",
                "Anregend",
              ],
            ),
            
            SizedBox(height: 16.h),
            
            // Medical Terms
            _buildBulletPointCard(
              title: "Medizinische Begriffe",
              points: [
                "Verdauungsfördernd",
                "Entzündungshemmend",
                "Nervenstärkend",
              ],
            ),
            
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildMainComponentsCard() {
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
            "Hauptinhaltsstoffe",
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.dark,
            ),
          ),
          SizedBox(height: 12.h),
          _buildComponentItem(
            name: "Limonen",
            description: "Ein frischer, zitrusartiger Duftstoff, der in großen Mengen in Zitrusschalen vorkommt.",
            effects: "stimmungsaufhellend, anregend, antibakteriell",
          ),
          _buildComponentItem(
            name: "Myrcen",
            description: "Ein erdig-würzig riechender Bestandteil, der in vielen Pflanzen vorkommt (z.B. Hopfen, Lorbeer).",
            effects: "beruhigend, schmerzlindernd, entzündungshemmend",
          ),
          _buildComponentItem(
            name: "Linalool",
            description: "Ein blumig-frischer Duftstoff, der in Lavendel, Koriander und Zitrusölen enthalten ist.",
            effects: "entspannend, ausgleichend, leicht schlaffördernd",
          ),
          _buildComponentItem(
            name: "Linalylacetat",
            description: "Ein esterartiger, fruchtig-blumiger Duftstoff – typischer Hauptbestandteil von Lavendel fein.",
            effects: "harmonisierend, krampflösend, stressmindernd",
          ),
          _buildComponentItem(
            name: "Bergapten",
            description: "Ein natürlicher Bestandteil in manchen Zitrusölen, besonders in kaltgepressten Ölen (z.B. Bergamotte, Bitterorange).",
            effects: "leicht beruhigend",
            warning: "Achtung: Bergapten ist phototoxisch, d.h. es kann die Haut bei Sonnenexposition empfindlich machen.",
          ),
        ],
      ),
    );
  }

  Widget _buildComponentItem({
    required String name,
    required String description,
    required String effects,
    String? warning,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• $name:",
            style: GoogleFonts.roboto(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.primaryDark,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            style: GoogleFonts.roboto(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.dark,
              height: 1.4,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            "Wirkung: $effects",
            style: GoogleFonts.roboto(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: ColorConstants.primary,
              height: 1.4,
            ),
          ),
          if (warning != null) ...[
            SizedBox(height: 4.h),
            Text(
              warning,
              style: GoogleFonts.roboto(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: ColorConstants.danger,
                height: 1.4,
              ),
            ),
          ],
        ],
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
    );  }
}