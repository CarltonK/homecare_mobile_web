import 'package:flutter/material.dart';

class GlobalCircleButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double? iconSize;
  final VoidCallback onPressed;
  final String? tooltip;

  const GlobalCircleButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
    this.iconSize,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: color ?? Colors.white),
      iconSize: iconSize ?? 24,
      onPressed: onPressed,
      tooltip: tooltip,
    );
  }
}
