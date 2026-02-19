import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/SplashScreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
@override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((v) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splashscreen()),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.orange,
                ),
                child: Center(
                  child: Text(
                    'PN',
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 32),
              Text(
                'PERSONAL NARRATIVE',
                style: GoogleFonts.poppins(
                  color: AppColor.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Your digital sanctuary for stories',
                style: GoogleFonts.poppins(
                  color: AppColor.orange,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 114),
              Image.asset('assets/images/foiz.png', height: 38, width: 320),
              SizedBox(height: 24),
              Image.asset('assets/images/homiy.png', height: 33, width: 152),
              SizedBox(height: 64),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.kblack,
    );
  }
}
