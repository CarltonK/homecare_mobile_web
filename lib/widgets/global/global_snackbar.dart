import 'package:flutter/material.dart';
import './../../core/styles/style.dart';

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
        content: Text(message),
        backgroundColor: backgroundColor,
        behavior: behavior,
        duration: duration,
      ),
    );
  }
}
