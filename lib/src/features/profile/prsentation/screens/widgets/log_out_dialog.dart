import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/profile/prsentation/cubit/profile_cubit.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 400,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: [AppColor.black, AppColor.orang]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Chiqishga aminmisiz ?'),
          Row(
            children: [
              Expanded(
                child: CupertinoButton.filled(
                  child: Text('Ha'),
                  onPressed: () {
                    context.read<ProfileCubit>().logOut(
                      navigatorQilish: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/welcome',
                          (_) => false,
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: CupertinoButton.filled(
                  color: AppColor.grey,
                  child: Text('Yoq'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
