import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class Temascreen extends StatelessWidget {
  const Temascreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.black,
        actions: [
          Text(
            'Skip',
            style: GoogleFonts.poppins(
              color: AppColor.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        title: Image.asset('assets/images/step.png', width: 104, height: 23),
        leading: BackButton(color: AppColor.white),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 23),
              Text(
                'Choose Your Genres',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                ),
              ),
              Text(
                'Select 3 or more to personalize your feed and \n discover your next favorite book.',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white,
                ),
              ),
              Container(
                width: 358,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 63, 62, 62),
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.search, color: AppColor.white),
                    SizedBox(width: 11),
                    Text(
                      'Search genres...',
                      style: GoogleFonts.poppins(
                        color: AppColor.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(height: 32),
              GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 80,
                  crossAxisSpacing: 80,
                  crossAxisCount: 2,
                  mainAxisExtent: 200,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 67, 66, 66),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assset/images/horor.png'),
                          Text(
                            'Horror',
                            style: GoogleFonts.poppins(
                              color: AppColor.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
              Text(
                '1/3 SELECTED',
                style: GoogleFonts.poppins(
                  color: AppColor.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColor.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      color: AppColor.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.black,
    );
  }
}
