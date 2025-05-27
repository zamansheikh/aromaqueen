import 'package:aromaqueen/core/constants/image_constants.dart';
import 'package:aromaqueen/features/home/views/favorite_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_html/flutter_html.dart';

class RecipeDetailScreen extends StatefulWidget {
  final String title;

  const RecipeDetailScreen({super.key, required this.title});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  bool noteClicked = false;

  // HTML content for the recipe
  static const String skinTighteningOilHtml = '''
    <div style="font-family: 'Roboto', sans-serif; line-height: 1.6; color: #333;">
      
      <div style="background-color: #f8f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #6366f1;">
        <h2 style="color: #4338ca; margin: 0 0 8px 0; font-size: 18px; font-weight: 700;">Hautstraffendes Körperöl</h2>
        <p style="margin: 0; font-size: 14px;">Dieses Körperöl eignet sich besonders zur Pflege müder, erschlaffter oder unebener Haut. Es kann unterstützend wirken bei Cellulite, nach Gewichtsveränderungen oder bei nachlassender Spannkraft, etwa nach der Schwangerschaft. Ideal ist die Anwendung direkt nach dem Duschen oder Baden, wenn die Poren geöffnet und die Haut aufnahmebereit ist. Die Kombination aus durchblutungsfördernden und straffenden ätherischen Ölen hilft, das Hautbild zu verbessern und Spannkraft zurückzugewinnen.</p>
      </div>

      <div style="background-color: #fff; padding: 16px; border-radius: 12px; margin-bottom: 16px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); border: 1px solid #e5e7eb;">
        <h3 style="color: #333; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">Zutaten & Wirkung</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 12px; font-size: 14px;">
            <strong style="color: #4338ca;">50ml Trägeröl (z.B. Mandelöl)</strong><br>
            <span style="color: #6b7280; font-size: 13px;">Hautpflegend, feuchtigkeitsspendend, besonders gut verträglich für empfindliche Haut</span>
          </li>
          <li style="margin-bottom: 12px; font-size: 14px;">
            <strong style="color: #4338ca;">10 Tropfen Bitterorangenöl (Citrus aurantium)</strong><br>
            <span style="color: #6b7280; font-size: 13px;">Straffend, hauttonisierend, wirkt zugleich stimmungsaufhellend</span>
          </li>
          <li style="margin-bottom: 12px; font-size: 14px;">
            <strong style="color: #4338ca;">5 Tropfen Rosmarinöl (Rosmarinus officinalis)</strong><br>
            <span style="color: #6b7280; font-size: 13px;">Regt die Durchblutung an, wirkt entschlackend und belebend</span>
          </li>
        </ul>
      </div>

      <div style="background-color: #f0f9ff; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #0ea5e9;">
        <h3 style="color: #0369a1; margin: 0 0 8px 0; font-size: 16px; font-weight: 600;">Anwendung</h3>
        <p style="margin: 0; font-size: 14px;">Nach dem Duschen auf die noch feuchte Haut auftragen und in kreisenden Bewegungen kräftig einmassieren – besonders an Oberschenkeln, Bauch oder Armen. Für eine intensivere Wirkung kann das Öl auch mit einer Massagebürste oder einem Schröpfglas eingearbeitet werden.</p>
      </div>

      <div style="background-color: #fef2f2; padding: 16px; border-radius: 12px; margin-bottom: 16px; border-left: 4px solid #ef4444;">
        <h3 style="color: #dc2626; margin: 0 0 12px 0; font-size: 16px; font-weight: 600;">⚠️ Sicherheitshinweise</h3>
        <ul style="margin: 0; padding-left: 20px;">
          <li style="margin-bottom: 8px; font-size: 14px;">
            <strong style="color: #dc2626;">Phototoxizität:</strong> Bitterorangenöl kann die Haut lichtempfindlicher machen. Nach der Anwendung sollte direkte Sonneneinstrahlung für mindestens 12 Stunden vermieden werden.
          </li>
          <li style="margin-bottom: 8px; font-size: 14px;">
            <strong style="color: #dc2626;">Verdünnung:</strong> Nicht unverdünnt auf die Haut auftragen.
          </li>
          <li style="margin-bottom: 8px; font-size: 14px;">
            <strong style="color: #dc2626;">Kontraindikationen:</strong> Nicht anwenden bei Kindern unter 6 Jahren, in der Schwangerschaft oder bei Bluthochdruck ohne Rücksprache mit Fachpersonen.
          </li>
          <li style="margin-bottom: 8px; font-size: 14px;">
            <strong style="color: #dc2626;">Patch-Test:</strong> Vor der ersten Anwendung einen Patch-Test in der Armbeuge durchführen, um eine mögliche Hautreaktion auszuschließen.
          </li>
        </ul>
      </div>

    </div>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            // Header with logo + close button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/logo_icon.svg',
                    height: 30,
                    width: 30,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close, size: 30, color: Colors.red),
                  ),
                ],
              ),
            ),

            // Hero Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  ImageConstants.onBoardingImage,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),            const SizedBox(height: 20),

            // Title + Description - Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget.title,
                            style: const TextStyle(
                              fontSize: 22,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            final recipe = {
                              "title": widget.title,
                              "image": "assets/images/hotline.jpg",
                            };
                            final isFav = FavoriteManager().isFavorite(recipe);
                            if (isFav) {
                              FavoriteManager().removeFavorite(recipe);
                            } else {
                              FavoriteManager().addFavorite(recipe);
                            }
                            // Trigger rebuild
                            (context as Element).markNeedsBuild();
                          },
                          icon: Icon(
                            FavoriteManager().isFavorite({
                                  "title": widget.title,
                                  "image": "assets/images/hotline.jpg",
                                })
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.greenAccent,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Html(
                      data: skinTighteningOilHtml,
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
                    
                    // Recipe Card (if note is clicked)
                    if (noteClicked) ...[
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with heart
                            Row(
                              children: const [
                                Text(
                                  'Recipe No. 128',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.favorite, color: Colors.greenAccent),
                              ],
                            ),
                            const SizedBox(height: 12),

                            // Recipe fields
                            const Text('Ingredients:\n[Add ingredients here]'),
                            const SizedBox(height: 10),
                            const Text(
                              'Application:\nMix the essential oils and carrier oil.',
                            ),
                            const SizedBox(height: 10),
                            const Text('Tips:\n[Add tips here]'),
                            const SizedBox(height: 10),
                            const Text('Safety:\n[Add safety instructions here]'),
                          ],
                        ),
                      ),
                    ],
                    
                    // Add bottom padding for scroll space
                    const SizedBox(height: 20),
                  ],
                ),
              ),            ),

            // Bottom Note + Search + Delete Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        noteClicked = !noteClicked;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/note.svg',
                      width: 28.w,
                      height: 28.w,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Use the keyword search',
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 16,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: SvgPicture.asset(
                            'assets/icons/ok.svg',
                            width: 24.w,
                            height: 24.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset(
                    'assets/icons/delete.svg',
                    width: 24.w,
                    height: 24.w,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
