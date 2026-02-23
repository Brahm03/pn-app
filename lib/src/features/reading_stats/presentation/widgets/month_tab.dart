import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/reading_stats/presentation/cubit/stats_cubit.dart';
import 'package:pn_app/src/features/reading_stats/presentation/widgets/custom_container.dart';
import 'package:pn_app/src/features/reading_stats/presentation/widgets/reading_metrics.dart';

class MonthTab extends StatelessWidget {
  const MonthTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsGeometry.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CustomContainer(
                  onTap: () {},
                  height: 158,
                  width: 171,
                  padding: EdgeInsetsGeometry.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/fire.svg'),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'CURRENT STREAK',
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.inter(
                                color: AppColor.orange,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '15 Days',
                        style: GoogleFonts.inter(
                          color: AppColor.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/up.svg'),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              '2 days from last week',
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.inter(
                                color: AppColor.green,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16),
                CustomContainer(
                  onTap: () {},
                  height: 158,
                  width: 171,
                  padding: EdgeInsetsGeometry.fromLTRB(21, 21, 21, 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/book.svg'),
                          SizedBox(width: 8),
                          Text(
                            'BOOKS READ',
                            style: GoogleFonts.inter(
                              color: AppColor.orange,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        '12 Books',
                        style: GoogleFonts.inter(
                          color: AppColor.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/up.svg'),
                          SizedBox(width: 4),
                          Text(
                            '1 more than Jan',
                            style: GoogleFonts.inter(
                              color: AppColor.green,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            CustomContainer(
              onTap: () {},
              height: 254,
              width: 358,
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monthly Progress',
                        style: GoogleFonts.inter(
                          color: AppColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Pages per day',
                        style: GoogleFonts.inter(
                          color: AppColor.pink,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<StatsCubit, StatsState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 30,
                        child: ListView.builder(
                          itemCount: state.categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(right: 16),
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.padded,
                              ),
                              child: Text(
                                state.categories[index],
                                style: GoogleFonts.inter(
                                  color: AppColor.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                ReadingMetrics(
                  headline: 'TOTAL TIME',
                  num: '142',
                  text: 'hours',
                ),
                SizedBox(width: 16),
                ReadingMetrics(headline: 'AVG SPEED', num: '285', text: 'wpm'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                ReadingMetrics(
                  headline: 'PAGES READ',
                  num: '3,842',
                  text: 'total',
                ),
                SizedBox(width: 16),
                ReadingMetrics(headline: 'DAILY AVG', num: '45', text: 'min'),
              ],
            ),
            SizedBox(height: 24),
            CustomContainer(
              onTap: () {},
              height: 222,
              width: 358,
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genre Breakdown',
                    style: GoogleFonts.inter(
                      color: AppColor.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/pie-chart.png',
                        width: 128,
                        height: 128,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 32),
                      Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 156,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColor.orange,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Sci-Fi',
                                  style: GoogleFonts.inter(
                                    color: AppColor.pink,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '60%',
                                  style: GoogleFonts.inter(
                                    color: AppColor.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 156,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColor.pink,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Fantasy',
                                  style: GoogleFonts.inter(
                                    color: AppColor.pink,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '25%',
                                  style: GoogleFonts.inter(
                                    color: AppColor.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 156,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: AppColor.brown,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'History',
                                  style: GoogleFonts.inter(
                                    color: AppColor.pink,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '15%',
                                  style: GoogleFonts.inter(
                                    color: AppColor.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColor.containerColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColor.orange.withAlpha(20),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColor.orange,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/light.svg',
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SMART INSIGHT',
                          style: GoogleFonts.inter(
                            color: AppColor.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.6
                          ),
                        ),
                        Text(
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          'You read 20% more on weekends! Keep up the great pace on Saturday.',
                          style: GoogleFonts.inter(
                            color: AppColor.pink,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
