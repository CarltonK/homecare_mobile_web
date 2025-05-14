import 'package:flutter/material.dart';
import './../../core/core.dart';

class GlobalMultiInfoActionButton extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final VoidCallback onTap;
  final bool emphasizeSecondary;
  const GlobalMultiInfoActionButton({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.onTap,
    this.emphasizeSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(primaryText, style: kLightBlack),
        GestureDetector(
          onTap: onTap,
          child: Text(secondaryText, style: kNormalBlack),
        ),
      ],
    );
  }
}
