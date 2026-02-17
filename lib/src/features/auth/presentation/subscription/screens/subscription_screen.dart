import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class SubscriptionScreen extends StatefulWidget {
  SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  bool isOn = false;
  bool isOn2 = false;
  bool isOn3 = false;
  bool isOn4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.darkBrown,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: AppColors.orange,
            ),
          ),
        ],
        backgroundColor: AppColors.darkBrown,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_sharp, color: AppColors.white),
        ),
        title: Text(
          'Your Membership',
          style: GoogleFonts.poppins(color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              Container(
                height: 118,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white.withAlpha(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FREE TIER USAGE',
                          style: GoogleFonts.poppins(color: AppColors.orange),
                        ),
                        Text(
                          '3 of 5 books',
                          style: GoogleFonts.poppins(color: AppColors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      textAlign: TextAlign.center,
                      'You\'ve enjoyed 3 out 5 free books this\nmonth. Upgrade to keep reading without limits.',
                      style: GoogleFonts.poppins(
                        color: AppColors.white.withAlpha(80),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                'Elevate Your Reading\nExperience',
                style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 7),
              Text(
                textAlign: TextAlign.center,
                'Unlock unlimited access to\nthousands of stories, anywhere,\nanytime.',
                style: GoogleFonts.poppins(
                  color: AppColors.white.withAlpha(80),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 522,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.orange),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.orange.withAlpha(100),
                      AppColors.darkBrown.withAlpha(40),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PN Premium',
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'Full library access',
                        style: GoogleFonts.poppins(
                          color: AppColors.white.withAlpha(80),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            '\$9.99',
                            style: GoogleFonts.poppins(
                              color: AppColors.white,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '/month',
                            style: GoogleFonts.poppins(
                              color: AppColors.white.withAlpha(80),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: AppColors.orange,
                          value: isOn,
                          onChanged: (value) {
                            setState(() {
                              isOn = value!;
                            });
                          },
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Unlimited Reading',
                              style: GoogleFonts.poppins(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'Access our entire library of thousands of titles.',
                              style: GoogleFonts.poppins(
                                color: AppColors.white.withAlpha(80),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: AppColors.orange,
                          value: isOn2,
                          onChanged: (value) {
                            setState(() {
                              isOn2 = value!;
                            });
                          },
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Offline Mode',
                              style: GoogleFonts.poppins(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'Download books and read anywhere without data.',
                              style: GoogleFonts.poppins(
                                color: AppColors.white.withAlpha(80),
                              ),
                              ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: AppColors.orange,
                          value: isOn3,
                          onChanged: (value) {
                            setState(() {
                              isOn3 = value!;
                            });
                          },
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ad-Free Experience',
                              style: GoogleFonts.poppins(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'No interrupsions, just you and your stories.',
                              style: GoogleFonts.poppins(
                                color: AppColors.white.withAlpha(80),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Checkbox(
                          activeColor: AppColors.orange,
                          value: isOn4,
                          onChanged: (value) {
                            setState(() {
                              isOn4 = value!;
                            });
                          },
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HQ Audiobooks',
                              style: GoogleFonts.poppins(
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              'High-fidelity narration for every title.',
                              style: GoogleFonts.poppins(
                                color: AppColors.white.withAlpha(80),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.orange,
                            minimumSize: Size(double.infinity, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                          ),
                          child: Text(
                            'Upgrade Now',
                            style: GoogleFonts.poppins(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: Text(
                          'CANCEL ANYTIME - NO HIDDEN FEES',
                          style: GoogleFonts.poppins(
                            color: AppColors.white.withAlpha(80),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 80,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white.withAlpha(20),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Annual Plan',
                            style: GoogleFonts.poppins(
                              color: AppColors.white,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Save 20% compared to monthly',
                            style: GoogleFonts.poppins(
                              color: AppColors.white.withAlpha(80),
                            ),
                          ),
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$99.99',
                            style: GoogleFonts.poppins(
                              color: AppColors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'SAVE \$20/YEAR',
                            style: GoogleFonts.poppins(
                              color: AppColors.orange,
                              fontSize: 10,
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
      ),
    );
  }
}