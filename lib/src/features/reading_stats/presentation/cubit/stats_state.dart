part of 'stats_cubit.dart';

abstract class StatsState {
  final List<String> categories = [
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
  ];
}

class StatsInitialState extends StatsState {}
