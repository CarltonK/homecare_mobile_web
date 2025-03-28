import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static double getProportionalWidth(BuildContext context, double value) {
    final double width = MediaQuery.of(context).size.width;
    return (value / 375.0) * width; // Assuming 375 is base width (iPhone X)
  }

  static double getProportionalHeight(BuildContext context, double value) {
    final double height = MediaQuery.of(context).size.height;
    return (value / 812.0) * height; // Assuming 812 is base height (iPhone X)
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile!;
    }
  }
}
