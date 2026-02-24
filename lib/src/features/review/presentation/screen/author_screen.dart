import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c0f0a).withAlpha(100),
      appBar: AppBar(
        backgroundColor: Color(0xff1c0f0a).withAlpha(100),
        actions: [
          SvgPicture.asset('assets/icons/menu.svg'),
          SizedBox(width: 15),
        ],
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Spacer(),
            Text(
              'Author Profile',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 22),
            Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Color(0xffE64C19)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/images/girl3.png'),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Elena Vance',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Sci-Fi & Fantasy Novelist',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xffE64C19),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'NYT Bestselling Author of The Nebula Chronicles series.',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff94A3B8),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 262,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffE64C19),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/profile.svg',
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Follow',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 42,
                  width: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff1c0f0a),
                    border: Border.all(color: Color(0xE64C191A).withAlpha(150)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: SvgPicture.asset('assets/icons/email.svg'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '24',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Books',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '1.2M',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '4.8',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rating',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SvgPicture.asset('assets/icons/book.svg'),
                SizedBox(width: 10),
                Text(
                  'Biography',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xE64C190D).withAlpha(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Elena Vance has been weaving intricate worlds of stardust and magic for over a decade. Born in Seattle and currently residing in the neon-lit streets of Tokyo, her writing is deeply influenc…',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10,),
                       Text(
                    'Read More',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffE64C19),
                    ),
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
