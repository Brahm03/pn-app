import 'package:flutter/material.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.onTap,
    required this.padding,
  });

  final double width;
  final double height;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: AppColor.containerColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.orange.withAlpha(5), width: 1),
          boxShadow: [
            BoxShadow(
              color: AppColor.black.withAlpha(5),
              offset: Offset(0, 1),
              blurRadius: 2,
              spreadRadius: 0,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
