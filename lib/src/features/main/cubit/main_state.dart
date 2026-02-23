import 'package:flutter/cupertino.dart';
import 'package:pn_app/src/features/profile/prsentation/screens/profile_screen.dart';
import 'package:pn_app/src/features/reading_stats/presentation/screens/stats_screen.dart';
import 'package:pn_app/src/features/subscription/presentation/screens/subscription_screen.dart';

abstract class MainState {}

class MainInitialState extends MainState {
  int currentIndex;

  List<Widget> pages = [
    SubscriptionScreen(),
    SizedBox(child: Center(child: Text('LIBRARY')),),
    StatisticsScreen(),
    SizedBox(child: Center(child: Text('SEARCH')),),
    ProfileScreen()
  ];

  MainInitialState({required this.currentIndex});
}
