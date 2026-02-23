import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/reading_stats/presentation/widgets/month_tab.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        toolbarHeight: 70,
        actionsPadding: EdgeInsets.only(right: 16),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/back_arrow_orange.svg'),
          ),
        ),
        title: Text(
          'Reading Statistics',
          style: GoogleFonts.inter(
            color: AppColor.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [SvgPicture.asset('assets/icons/share.svg')],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              color: AppColor.containerColor,
              child: TabBar(
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: AppColor.orange),
                  insets: EdgeInsets.symmetric(horizontal: 50),
                ),
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.white70,
                tabs: [
                  Tab(text: "Week"),
                  Tab(text: "Month"),
                  Tab(text: "Year"),
                  Tab(text: "All Time"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      "Week",
                      style: TextStyle(color: AppColor.orange),
                    ),
                  ),
                  MonthTab(),
                  Center(
                    child: Text(
                      "Year",
                      style: TextStyle(color: AppColor.orange),
                    ),
                  ),
                  Center(
                    child: Text(
                      "All Time",
                      style: TextStyle(color: AppColor.orange),
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
