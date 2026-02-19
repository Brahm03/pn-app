import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c0f0a),
      appBar: AppBar(
        actions: [
          SvgPicture.asset('assets/icons/search.svg'),
          SizedBox(width: 15),
          SvgPicture.asset('assets/icons/menu.svg'),
          SizedBox(width: 15),
        ],
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Text(
              'Reader Reviews',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 327,
            color: Color.fromARGB(230, 48, 16, 9).withAlpha(100),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '4.8',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 60,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '/5',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(230, 146, 50, 28),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/stars.png',
                    height: 19,
                    width: 125,
                  ),
                  Text(
                    '1,248 Reviews',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromARGB(230, 146, 50, 28),
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Text(
                        '5',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 8,
                        width: 274,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '75%',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '4',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 8,
                        width: 274,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '15%',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '3',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 8,
                        width: 274,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '6%',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '2',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 8,
                        width: 274,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '2%',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '1',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        height: 8,
                        width: 274,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '2%',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromARGB(230, 80, 27, 28),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 116,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffE64C19),
                      ),
                      child: Text(
                        'Most Recent',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 116,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(230, 80, 27, 28),
                      ),
                      child: Text(
                        'Highest Rated',
                        style: GoogleFonts.inter(color: Color(0xffE64C19)),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      width: 116,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(230, 80, 27, 28),
                      ),
                      child: Text(
                        'Critical',
                        style: GoogleFonts.inter(color: Color(0xffE64C19)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 14,),
          Container(
            alignment: Alignment.center,
          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
 color: Color.fromARGB(230, 48, 16, 9).withAlpha(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset('assets/images/girl.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Sarah Jenkins',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                               Text(
                          'Verified Purchase • 2 days ago',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffE64C19),
                          ),
                        ),
                        
                    ],
                  ),
                  Spacer(),
                        Image.asset(
                    'assets/images/stars.png',
                    height: 15,
                    width: 110,
                  ),
                ],
              ),
              SizedBox(height: 10,),
                  Text(
                          'Absolutely stunning storytelling. The character development in the third chapter moved me to tears. I ve recommended this to my entire book club!',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/heart.svg',width: 15,height: 15,),
                         Text(
                          'Helpful (24)',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xffE64C19),
                          ),
                        ),
                          ],
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
