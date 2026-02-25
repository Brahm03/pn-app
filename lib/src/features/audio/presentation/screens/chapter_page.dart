import 'package:flutter/material.dart';
import 'package:pn_app/src/features/audio/presentation/widgets/chapter_widget.dart';


class ChaptersPage extends StatelessWidget {
  const ChaptersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "CHAPTERS",
                style: TextStyle(
                  color: Colors.white70,
                  letterSpacing: 2,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "9 Chapters Total",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ChapterItem(
                number: "01",
                title: "Chapter 1: The Introduction",
                duration: "14:29",
                isActive: false,
              ),
              ChapterItem(
                number: "02",
                title: "Chapter 2: Valley of Ashes",
                duration: "11:15",
                isActive: false,
              ),
              ChapterItem(
                number: "03",
                title: "Chapter 3: The Party",
                duration: "38:20",
                isActive: true,
              ),
              ChapterItem(
                number: "04",
                title: "Chapter 4: Gatsby's Past",
                duration: "22:47",
                isActive: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
