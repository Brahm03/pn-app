import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pn_app/src/features/audio/presentation/widgets/chapter_widget.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2C0F0A), Color(0xFF1A0B08)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Column(
                      children: [
                        Text(
                          "PN PLAYER",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Now Playing",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                ),

                 SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/mainimage.png',fit: BoxFit.cover,)
                  ),
                ),

                 SizedBox(height: 30),

                Text(
                  "The Great Gatsby",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "F. Scott Fitzgerald",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),

                SizedBox(height: 30),

                Column(
                  children: [
                    Slider(
                      value: 0.4,
                      onChanged: (value) {},
                      activeColor: Color(0XFFE64C19),
                      inactiveColor: Colors.white24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("12:45", style: TextStyle(color: Colors.white)),
                        Text("-25:35", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 15),

                InkWell(onTap: () {
                   Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>ChapterItem(number: '', title: '', duration: '', isActive:false)),
                  
                              );
                },
                  child: Text(
                    "CHAPTER 3 OF 9",
                    style: TextStyle(
                      color: Color(0XFFE64C19),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:SvgPicture.asset('assets/icons/left5.svg'),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFE64C19),
                      ),
                      child: const Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icons/right5.svg'),
                    ),
                  ],
                ),

                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgPicture.asset('assets/icons/speed.svg'),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '1.0X SPEED',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:SvgPicture.asset('assets/icons/off.svg')
                        ),
                        SizedBox(height: 6),
                        Text(
                          'OFF',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgPicture.asset('assets/icons/notes.svg'),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'NOTES',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
