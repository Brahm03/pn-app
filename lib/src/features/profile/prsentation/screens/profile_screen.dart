import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.darkBrown,
      appBar: AppBar(
        backgroundColor: AppColors.darkBrown,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: AppColors.orange),
        ),
        title: Text(
          'PN Profile',
          style: GoogleFonts.inter(color: AppColors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: AppColors.orange),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                CircleAvatar(
                  foregroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1739361617387-abe27c9e1d4b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHdpdGglMjBvcmFuZ2UlMjBmb258ZW58MHx8MHx8fDA%3D',
                  ),
                  backgroundColor: AppColors.white,
                  radius: 45,
                  backgroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1739361617387-abe27c9e1d4b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmlsZSUyMHdpdGglMjBvcmFuZ2UlMjBmb258ZW58MHx8MHx8fDA%3D',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'John Doe',
                  style: GoogleFonts.inter(color: AppColors.white),
                ),
                Text(
                  'john.doe@email.com',
                  style: GoogleFonts.inter(color: AppColors.orange),
                ),
                SizedBox(height: 17),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '   42   ',
                        style: GoogleFonts.inter(color: AppColors.white),
                      ),
                      Text(
                        '   1.2k   ',
                        style: GoogleFonts.inter(color: AppColors.white),
                      ),
                      Text(
                        '   12    ',
                        style: GoogleFonts.inter(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'BOOKS',
                      style: GoogleFonts.inter(
                        color: AppColors.grey,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'MINUTES',
                      style: GoogleFonts.inter(
                        color: AppColors.grey,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'BADGES',
                      style: GoogleFonts.inter(
                        color: AppColors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      'LIBRARY ACTIVITY',
                      style: GoogleFonts.inter(color: AppColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.darkBrown.withRed(42),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.shopping_bag_sharp,
                          color: AppColors.orange,
                        ),
                        title: Text(
                          'My Pusrchases',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/subscription');
                          },
                          icon: Icon((Icons.keyboard_arrow_right_outlined)),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.translate, color: AppColors.orange),
                        title: Text(
                          'Reading History',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'ACCOUNT & SETTINGS',
                      style: GoogleFonts.inter(color: AppColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  height: 145,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.darkBrown.withRed(42),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.dark_mode, color: AppColors.orange),
                        title: Text(
                          'Dark Mode',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: CupertinoSwitch(
                          activeTrackColor: AppColors.orange,
                          value: isOn,
                          onChanged: (value) {
                            setState(() {
                              isOn = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.security, color: AppColors.orange),
                        title: Text(
                          'Account Security',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: IconButton(onPressed: (){
                          Navigator.pushNamed(context, '/edit_profile');
                        }, icon: Icon(Icons.keyboard_arrow_right_outlined)),
                      ),
                      ListTile(
                        leading: Icon(Icons.help, color: AppColors.orange),
                        title: Text(
                          'Help & Support',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.warning_amber,
                          color: AppColors.orange,
                        ),
                        title: Text(
                          'Report a problem',
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/report');
                          },
                          icon: Icon(Icons.keyboard_arrow_right_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.darkBrown.withRed(42),
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: AppColors.orange),
                      SizedBox(width: 12),
                      Text(
                        'Logout',
                        style: GoogleFonts.inter(
                          color: AppColors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'PN Version 2.4.0 (1024)',
                  style: GoogleFonts.inter(color: AppColors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
