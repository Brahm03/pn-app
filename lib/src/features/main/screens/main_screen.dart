import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/main/cubit/main_cubit.dart';
import 'package:pn_app/src/features/main/cubit/main_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.containerColor,
          body: (state as MainInitialState).pages[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              context.read<MainCubit>().changeIndex(value);
            },
            currentIndex: state.currentIndex,
            fixedColor: AppColor.grey,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home1.svg'),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/library1.svg',
                ),
                label: 'LIBRARY',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/stats1.svg'),
                label: 'STATS',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/search1.svg'),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile1.svg',
                ),
                label: 'PROFILE',
              ),
            ],
          ),
        );
      },
    );
  }
}
