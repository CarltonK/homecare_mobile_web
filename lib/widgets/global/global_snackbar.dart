import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './../../core/core.dart';

class GlobalSnackBar {
  static void show(
    BuildContext context,
    String message, {
    Color backgroundColor = AppColors.red,
    Duration duration = const Duration(seconds: 3),
    SnackBarBehavior behavior = SnackBarBehavior.floating,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            SvgPicture.asset(
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
              AppConstants().errorIcon,
              height: Responsive.getProportionalHeight(context, 18),
              width: Responsive.getProportionalWidth(context, 18),
            ),
            SizedBox(width: Responsive.getProportionalWidth(context, 8)),
            Text(message),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: behavior,
        duration: duration,
      ),
    );
  }
}
