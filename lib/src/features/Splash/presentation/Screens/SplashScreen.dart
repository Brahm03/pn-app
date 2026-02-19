import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/Splash/presentation/Screens/TemaScreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 47),
              Container(
                width: 342,
                height: 342,
                decoration: BoxDecoration(color: Colors.grey),
                child: Image.network(
                  'https://images.unsplash.com/photo-1499257398700-43669759a540?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cmVhZCUyMGElMjBib29rfGVufDB8fDB8fHww',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 74),
              Text(
                'Your Personal Library,\nAnywhere',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Access thousands of titles across all \n genres at your fingertips.',
                style: GoogleFonts.poppins(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 32),
              Image.asset('assets/images/viev.png', width: 64, height: 8),
              SizedBox(height: 40),
              Container(
                width: 342,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColor.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Temascreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Next',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      Icon(Icons.chevron_right_outlined, color: AppColor.white),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 52),
            ],
          ),
        ),
      ),
      backgroundColor: AppColor.black,
    );
  }
}
