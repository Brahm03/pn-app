

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChapterItem extends StatelessWidget {
  final String number;
  final String title;
  final String duration;
  final bool isActive;

   ChapterItem({
    super.key,
    required this.number,
    required this.title,
    required this.duration,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isActive ?  Color(0xFF3A1F17) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            number,
            style: TextStyle(
              color: isActive ? Colors.orange : Colors.white54,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (isActive) ...[
                  const SizedBox(height: 4),
                  const Text(
                    "NOW PLAYING",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 10,
                      letterSpacing: 1,
                    ),
                  ),
                ] else ...[
                   SizedBox(height: 4),
                  Text(
                    duration,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),]
              ],
            ),
          ),
          if (isActive)
            const Icon(
              Icons.equalizer,
              color: Colors.orange,
              size: 18,
            ),
        ],
      ),
    );
  }
}