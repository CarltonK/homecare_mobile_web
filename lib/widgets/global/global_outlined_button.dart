import 'package:flutter/material.dart';

import '../../../core/core.dart';

class GlobalOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double kButtonHeight;
  final double kButtonWidth;

  const GlobalOutlinedButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.kButtonHeight = 46,
    this.kButtonWidth = 46,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size(kButtonWidth, kButtonHeight),
        side: const BorderSide(color: AppColors.backgroundGrey),
        shape: RoundedRectangleBorder(borderRadius: kRadius10),
      ),
      child: Icon(icon, color: AppColors.greyDark),
    );
  }
}
