import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import './../../core/core.dart';

class GlobalSnackBar {
  static void show(
    BuildContext context,
    String message, {
    bool isSuccess = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Wrap(
          alignment: WrapAlignment.center,
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
            Text(message, textAlign: TextAlign.center),
          ],
        ),
        backgroundColor: isSuccess ? AppColors.green : AppColors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
