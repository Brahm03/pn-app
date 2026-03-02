import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  double value = 0.5;
  double brightnessValue = 0.85;

  @override
  Widget build(BuildContext context) {
    int fontSize = (12 + value * 12).toInt();

    return Scaffold(
      backgroundColor: const Color(0xFF211511),
      appBar: AppBar(
        backgroundColor: const Color(0xFF211511),
        title: const Text('Settings', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, color: Color(0xFF4A1F14)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(13),
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF4A1F14),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepOrange.shade400,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Alex Johnson",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "alex.johnson@email.com",
                          style: TextStyle(color: Colors.deepOrange.shade400),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Manage Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Notifications",
            style: TextStyle(
              color: Colors.deepOrange.shade400,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 7),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF4A1F14),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.notifications, color: Colors.orange),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'New Book Alerts',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Switch(
                        value: true,
                        onChanged: (v) {},
                        activeColor: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: Colors.white24),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.orange),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Daily Reading Reminders',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Switch(
                        value: false,
                        onChanged: (v) {},
                        activeColor: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: Colors.white24),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.people, color: Colors.orange),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Community Updates',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Switch(
                        value: true,
                        onChanged: (v) {},
                        activeColor: Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Reading Preferences",
            style: TextStyle(
              color: Colors.deepOrange.shade400,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 7),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF4A1F14),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/one.svg',
                      color: Colors.white,
                      width: 10,
                      height: 10,
                    ),
                    const SizedBox(width: 95),
                    Text(
                      'Font Size (${fontSize}px)',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 95),
                    SvgPicture.asset(
                      'assets/icons/two.svg',
                      color: Colors.white,
                      width: 10,
                      height: 15,
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 6,
                          activeTrackColor: Color(0xFF3A1F16),
                          inactiveTrackColor: Color(0xFF3A1F16),
                          thumbColor: Color(0xFFFF5A1F),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 9,
                          ),
                          overlayColor: Colors.transparent,
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 0,
                          ),
                        ),
                        child: Slider(
                          value: value,
                          min: 0,
                          max: 1,
                          onChanged: (v) {
                            setState(() {
                              value = v;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/sunn.svg',
                      color: Colors.white,
                      width: 16,
                      height: 16,
                    ),
                    Spacer(),
                    Text(
                      'Display Brightness',
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      '${(brightnessValue * 100).toInt()}%',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackHeight: 6,
                          activeTrackColor: Color(0xFF3A1F16),
                          inactiveTrackColor: Color(0xFF3A1F16),
                          thumbColor: Color(0xFFFF5A1F),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 9,
                          ),
                          overlayColor: Colors.transparent,
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 0,
                          ),
                        ),
                        child: Slider(
                          value: brightnessValue,
                          min: 0,
                          max: 1,
                          onChanged: (v) {
                            setState(() {
                              brightnessValue = v;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Privacy & Security",
            style: TextStyle(
              color: Colors.deepOrange.shade400,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF4A1F14),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/clock.svg',
                        color: Colors.orange,
                        width: 16,
                        height: 21,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Change Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow.svg',
                        color: Colors.white54,
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: Colors.white24),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/iron.svg',
                        color: Colors.orange,
                        width: 16,
                        height: 21,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Two-Factor Authentication',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Color(0XFFE64C191A),
                        child: Text(
                          'On',
                          style: TextStyle(color: Color(0XFFE64C19)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(height: 1, color: Colors.white24),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/money.svg',
                        color: Colors.orange,
                        width: 16,
                        height: 21,
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'Manage Your Data',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/arrow.svg',
                        color: Colors.white54,
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "About",
            style: TextStyle(
              color: Colors.deepOrange.shade400,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF4A1F14),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Version',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        '2.4.0 (Build 108)',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.white24, height: 1),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Rate PN Book App',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Spacer(),
                      Icon(Icons.star_border, color: Colors.white70, size: 18),
                    ],
                  ),
                ),
                const Divider(color: Colors.white24, height: 1),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Terms of Service',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Spacer(),
                      Icon(Icons.open_in_new, color: Colors.white70, size: 18),
                    ],
                  ),
                ),
                const Divider(color: Colors.white24, height: 1),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Spacer(),
                      Icon(Icons.open_in_new, color: Colors.white70, size: 18),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF2B140D),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Color(0xFFB85A2B),
                width: 1.5,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout, color: Color(0xFFFF6A2A), size: 18),
                SizedBox(width: 8),
                Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Color(0xFFFF6A2A),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "© 2024 PN Book App. All rights reserved.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
