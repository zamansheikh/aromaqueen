import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';

class PlantDetailsScreen extends StatelessWidget {
  final String? plantName; // Optional parameter for plant name
  const PlantDetailsScreen({super.key, this.plantName});

  // HTML content for Bitterorange (Bitter Orange) plant details
  static const String bitterOrangePlantHtml = '''
    <div style="font-family: 'Roboto', sans-serif; line-height: 1.6; color: #333;">
      
      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h2 style="color: #4338ca; margin: 0 0 8px 0; font-size: 18px; font-weight: 700;">Beschreibung</h2>
        <p style="margin: 0; font-size: 14px;">Die Bitterorange, auch Pomeranze genannt, ist ein immergrüner, kleiner Baum oder großer Strauch aus der Familie der Rautengewächse (Rutaceae). Er kann bis zu 10 Meter hoch werden und trägt glänzend grüne, ledrige Blätter mit geflügelten Blattstielen. Die weißen Blüten sind intensiv duftend und erscheinen meist im Frühjahr.</p>
      </div>

      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h3 style="color: #4338ca; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Herkunft und Verbreitung</h3>
        <p style="margin: 0; font-size: 14px;">Die Bitterorange stammt ursprünglich aus Südostasien, wurde aber bereits im 10. Jahrhundert in den Mittelmeerraum eingeführt. Heute wächst sie wild oder kultiviert in vielen warmen Regionen, insbesondere rund um das Mittelmeer, in Indien, Afrika und Lateinamerika.</p>
      </div>

      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h3 style="color: #4338ca; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Früchte</h3>
        <p style="margin: 0; font-size: 14px;">Die Früchte ähneln äußerlich der Süßorange, sind jedoch kleiner, rauer und besitzen einen deutlich bitteren Geschmack. Die Schale ist dick und enthält reichlich ätherisches Öl. Obwohl die Frucht roh ungenießbar ist, wird sie für Marmelade (z.B. englische Orangenmarmelade) oder für die Herstellung ätherischer Öle genutzt.</p>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Botanische Informationen</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Synonym:</strong> Bitterorange, Pomeranze</li>
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Botanischer Name:</strong> Citrus aurantium</li>
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Botanische Familie:</strong> Rutaceae (Rautengewächse)</li>
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Pflanzenteil(e):</strong> Schale der Frucht</li>
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Herkunft:</strong> Mittelmeerraum, Südostasien</li>
          <li style="margin-bottom: 8px; font-size: 14px;"><strong>Gewinnung:</strong> Kaltpressung der Fruchtschale</li>
        </ul>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 16px 0; font-size: 16px; font-weight: 600;">Hauptinhaltsstoffe</h3>
        
        <div style="margin-bottom: 16px;">
          <h4 style="color: #4338ca; margin: 0 0 4px 0; font-size: 14px; font-weight: 600;">• Limonen:</h4>
          <p style="margin: 0 0 4px 0; font-size: 13px; line-height: 1.4;">Ein frischer, zitrusartiger Duftstoff, der in großen Mengen in Zitrusschalen vorkommt.</p>
          <p style="margin: 0; font-size: 13px; font-weight: 500; color: #6366f1;">Wirkung: stimmungsaufhellend, anregend, antibakteriell</p>
        </div>

        <div style="margin-bottom: 16px;">
          <h4 style="color: #4338ca; margin: 0 0 4px 0; font-size: 14px; font-weight: 600;">• Myrcen:</h4>
          <p style="margin: 0 0 4px 0; font-size: 13px; line-height: 1.4;">Ein erdig-würzig riechender Bestandteil, der in vielen Pflanzen vorkommt (z.B. Hopfen, Lorbeer).</p>
          <p style="margin: 0; font-size: 13px; font-weight: 500; color: #6366f1;">Wirkung: beruhigend, schmerzlindernd, entzündungshemmend</p>
        </div>

        <div style="margin-bottom: 16px;">
          <h4 style="color: #4338ca; margin: 0 0 4px 0; font-size: 14px; font-weight: 600;">• Linalool:</h4>
          <p style="margin: 0 0 4px 0; font-size: 13px; line-height: 1.4;">Ein blumig-frischer Duftstoff, der in Lavendel, Koriander und Zitrusölen enthalten ist.</p>
          <p style="margin: 0; font-size: 13px; font-weight: 500; color: #6366f1;">Wirkung: entspannend, ausgleichend, leicht schlaffördernd</p>
        </div>

        <div style="margin-bottom: 16px;">
          <h4 style="color: #4338ca; margin: 0 0 4px 0; font-size: 14px; font-weight: 600;">• Linalylacetat:</h4>
          <p style="margin: 0 0 4px 0; font-size: 13px; line-height: 1.4;">Ein esterartiger, fruchtig-blumiger Duftstoff – typischer Hauptbestandteil von Lavendel fein.</p>
          <p style="margin: 0; font-size: 13px; font-weight: 500; color: #6366f1;">Wirkung: harmonisierend, krampflösend, stressmindernd</p>
        </div>

        <div style="margin-bottom: 16px;">
          <h4 style="color: #4338ca; margin: 0 0 4px 0; font-size: 14px; font-weight: 600;">• Bergapten:</h4>
          <p style="margin: 0 0 4px 0; font-size: 13px; line-height: 1.4;">Ein natürlicher Bestandteil in manchen Zitrusölen, besonders in kaltgepressten Ölen (z.B. Bergamotte, Bitterorange).</p>
          <p style="margin: 0 0 4px 0; font-size: 13px; font-weight: 500; color: #6366f1;">Wirkung: leicht beruhigend</p>
          <p style="margin: 0; font-size: 12px; font-weight: 500; color: #dc2626;"><strong>Achtung:</strong> Bergapten ist phototoxisch, d.h. es kann die Haut bei Sonnenexposition empfindlich machen.</p>
        </div>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Pharmakologische Begriffe</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Phototoxizität</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Krampflösend</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Anregend</li>
        </ul>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Medizinische Begriffe</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Verdauungsfördernd</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Entzündungshemmend</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Nervenstärkend</li>
        </ul>
      </div>

    </div>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: plantName ?? 'Plant Details'),
      backgroundColor: ColorConstants.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Html(
          data: bitterOrangePlantHtml,
          style: {
            "body": Style(
              margin: Margins.zero,
              padding: HtmlPaddings.zero,
            ),
            "div": Style(
              margin: Margins.zero,
            ),
            "h2": Style(
              fontSize: FontSize(18.sp),
              fontWeight: FontWeight.w700,
              margin: Margins.only(bottom: 8.h),
            ),
            "h3": Style(
              fontSize: FontSize(16.sp),
              fontWeight: FontWeight.w600,
              margin: Margins.only(bottom: 12.h),
            ),
            "h4": Style(
              fontSize: FontSize(14.sp),
              fontWeight: FontWeight.w600,
              margin: Margins.only(bottom: 4.h),
            ),
            "p": Style(
              fontSize: FontSize(14.sp),
              lineHeight: const LineHeight(1.5),
              margin: Margins.zero,
            ),
            "li": Style(
              fontSize: FontSize(14.sp),
              lineHeight: const LineHeight(1.4),
              margin: Margins.only(bottom: 8.h),
            ),
            "ul": Style(
              margin: Margins.zero,
              padding: HtmlPaddings.only(left: 20.w),
            ),
          },
        ),
      ),    );
  }
}