import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class ReadingMetrics extends StatelessWidget {
  const ReadingMetrics({
    super.key,
    required this.headline,
    required this.num,
    required this.text,
  });

  final String headline;
  final String num;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 171,
        height: 82,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColor.containerColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.orange.withAlpha(5), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headline,
              style: GoogleFonts.inter(
                color: AppColor.pink,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Text(
                  num,
                  style: GoogleFonts.inter(
                    color: AppColor.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  text,
                  style: GoogleFonts.inter(
                    color: AppColor.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
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
