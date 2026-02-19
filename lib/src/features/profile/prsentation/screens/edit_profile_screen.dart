import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBrown,
      appBar: AppBar(
        backgroundColor: AppColor.darkBrown,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp, color: AppColor.white),
        ),
        title: Text(
          'Edit Profile',
          style: GoogleFonts.inter(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 32),
                CircleAvatar(
                  foregroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1739361617387-abe27c9e1d4b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHdpdGglMjBvcmFuZ2UlMjBmb258ZW58MHx8MHx8fDA%3D',
                  ),
                  backgroundColor: AppColor.white,
                  radius: 45,
                  backgroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1739361617387-abe27c9e1d4b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHdpdGglMjBvcmFuZ2UlMjBmb258ZW58MHx8MHx8fDA%3D',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'PN Member',
                  style: GoogleFonts.inter(color: AppColor.white),
                ),
                Text(
                  'Change Photo',
                  style: GoogleFonts.inter(color: AppColor.orange),
                ),
                Text(
                  'FULL NAME',
                  style: GoogleFonts.inter(color: AppColor.orange),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'FULL NAME',
                      style: GoogleFonts.inter(color: AppColor.orange),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: GoogleFonts.inter(color: AppColor.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: AppColor.orange,
                    ),
                    hintStyle: GoogleFonts.inter(color: AppColor.white),
                    hintText: 'Johnnathon Doe',
                    focusColor: AppColor.orange,
                    filled: true,
                    fillColor: AppColor.darkBrown.withRed(60),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColor.orange),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'EMAIL ADDRESS',
                      style: GoogleFonts.inter(color: AppColor.orange),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: GoogleFonts.inter(color: AppColor.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: AppColor.orange,
                    ),
                    hintStyle: GoogleFonts.inter(color: AppColor.white),
                    hintText: 'john.doe@pnapp.com',
                    focusColor: AppColor.orange,
                    filled: true,
                    fillColor: AppColor.darkBrown.withRed(60),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColor.orange),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'PHONE NUMBRER',
                      style: GoogleFonts.inter(color: AppColor.orange),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextFormField(
                  style: GoogleFonts.inter(color: AppColor.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                      color: AppColor.orange,
                    ),
                    hintStyle: GoogleFonts.inter(color: AppColor.white),
                    hintText: '+1 (555) 0123-456',
                    focusColor: AppColor.orange,
                    filled: true,
                    fillColor: AppColor.darkBrown.withRed(60),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: AppColor.orange),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 74,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.darkBrown.withRed(50),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 37,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.orange.withOpacity(0.2),
                      ),
                      child: Icon(Icons.lock_outline, color: AppColor.orange),
                    ),
                    title: Text(
                      'Change Password',
                      style: GoogleFonts.inter(color: AppColor.white),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.orange,
                      size: 16,
                    ),
                    subtitle: Text(
                      'Last changed 3 month ago',
                      style: GoogleFonts.inter(
                        color: AppColor.white.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 29),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(double.infinity, 56),
                    backgroundColor: AppColor.orange,
                    minimumSize: Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: GoogleFonts.inter(color: AppColor.white),
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











// TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(Icons.person, color: AppColor.white) ,
                //     hintStyle: GoogleFonts.inter(color: AppColor.white),
                //     hintText: 'Johnnathon Doe',
                //     focusColor: AppColor.orange,
                //     filled: true,
                //     fillColor: AppColor.darkBrown.withRed(60),
                //   ),
                // ),