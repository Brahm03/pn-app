import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBrown,
      appBar: AppBar(
        backgroundColor: AppColors.darkBrown,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp, color: AppColors.orange),
        ),
        title: Text(
          'Report a Problem',
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.category_outlined, color: AppColors.orange),
                    SizedBox(width: 8),
                    Text(
                      'CATEGORY',
                      style: GoogleFonts.inter(color: AppColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.darkBrown.withRed(45),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Category',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.description_outlined, color: AppColors.orange),
                    SizedBox(width: 8),
                    Text(
                      'DESCRIPTION',
                      style: GoogleFonts.inter(color: AppColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: GoogleFonts.inter(color: AppColors.white),
                  maxLines: 7,
                  decoration: InputDecoration(
                    hintText: 'Tell us what\'s happening...',
                    hintStyle: GoogleFonts.inter(color: AppColors.grey),
                    filled: true,
                    fillColor: AppColors.darkBrown.withRed(45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Icon(Icons.image_outlined, color: AppColors.orange),
                    SizedBox(width: 8),
                    Text(
                      'ATTACHMENTS (OPTIONAL )',
                      style: GoogleFonts.inter(color: AppColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_outlined,
                            color: AppColors.orange,
                          ),
                        ),
                        Text(
                          'ADD',
                          style: GoogleFonts.inter(color: AppColors.orange),
                        ),
                      ],
                    ),

                    SizedBox(width: 20),
                    Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset('assets/images/phone.png'),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Supported formats: PNG, JPG (Max 5MB)',
                      style: GoogleFonts.inter(color: AppColors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Divider(color: AppColors.orange.withAlpha(100), height: 5),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(double.infinity, 56),
                    backgroundColor: AppColors.orange,
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.send_outlined, color: AppColors.white),
                      SizedBox(width: 8),
                      Text(
                        'Submit Report',
                        style: GoogleFonts.inter(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'We usually respond within 24-48 hours.',
                    style: GoogleFonts.inter(color: AppColors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
