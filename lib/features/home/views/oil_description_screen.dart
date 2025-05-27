import 'package:aromaqueen/core/components/custom_appbar.dart';
import 'package:aromaqueen/core/themes/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';

class OilDescriptionScreen extends StatelessWidget {
  final String? oilName; // Optional parameter for oil name
  const OilDescriptionScreen({super.key, this.oilName});

  // HTML content for Bitterorange (Bitter Orange) essential oil
  static const String bitterOrangeHtml = '''
    <div style="font-family: 'Roboto', sans-serif; line-height: 1.6; color: #333;">
      
      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h2 style="color: #4338ca; margin: 0 0 8px 0; font-size: 18px; font-weight: 700;">Beschreibung</h2>
        <p style="margin: 0; font-size: 14px;">Das ätherische Öl der Bitterorange wird hauptsächlich durch Kaltpressung der Schale gewonnen. Es hat einen kräftigen, frischen, leicht herben Zitrusduft.</p>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Wichtigste Anwendungsgebiete in der Aromatherapie</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Belebung und Erfrischung</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Unterstützung bei Konzentrationsschwäche</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Stimmungsaufhellung bei Melancholie und Stress</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Förderung der Verdauung</li>
        </ul>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Körperliche Haupt-Wirkungen</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Anregend und durchblutungsfördernd</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Verdauungsfördernd</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Krampflösend</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Entzündungshemmend</li>
        </ul>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Seelische Haupt-Wirkungen</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Stimmungsaufhellend</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Konzentrationsfördernd</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Stressmindernd</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Belebend</li>
        </ul>
      </div>

      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h3 style="color: #4338ca; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Chakra</h3>
        <p style="margin: 0; font-size: 14px;">Solarplexus-Chakra (Energiezentrum für Selbstbewusstsein und Willenskraft)</p>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Hauptanwendungen</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Aromadiffusor bei Müdigkeit und Konzentrationsproblemen</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Massageöl bei Muskelverspannungen und Verdauungsbeschwerden</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Hautpflege zur Anregung der Durchblutung (verdünnt verwenden)</li>
        </ul>
      </div>

      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h3 style="color: #4338ca; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Haltbarkeit nach Öffnen</h3>
        <p style="margin: 0; font-size: 14px;">Ca. 12 Monate, kühl und dunkel lagern</p>
      </div>

      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h3 style="color: #4338ca; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Duftnote</h3>
        <p style="margin: 0; font-size: 14px;">Frisch, zitrisch, herb, leicht würzig</p>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Passende Öle für Duftmischungen</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Lavendel</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Zitrone</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Bergamotte</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Rosmarin</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Pfefferminze</li>
        </ul>
      </div>

      <div style="background-color: #fef2f2; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #ef4444;">
        <h3 style="color: #dc2626; margin: 0 0 12px 0; font-size: 16px; font-weight: 600; display: flex; align-items: center;">
          <span style="margin-right: 8px;">⚠️</span> Sicherheit
        </h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">Kann fototoxisch sein (auf die Haut aufgetragen, Sonnenexposition vermeiden)</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Nicht unverdünnt auf empfindliche Haut auftragen</li>
          <li style="margin-bottom: 8px; font-size: 14px;">Nicht für Schwangere und Kinder unter 6 Jahren empfohlen</li>
        </ul>
      </div>

    </div>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar1(title: oilName ?? 'Oil Description'),
      backgroundColor: ColorConstants.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Html(
          data: bitterOrangeHtml,
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
      ),
    );
  }
}