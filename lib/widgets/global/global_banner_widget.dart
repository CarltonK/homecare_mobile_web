import 'package:flutter/material.dart';

class GlobalLandingBanner extends StatelessWidget {
  final Size size;

  const GlobalLandingBanner({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .5,
      height: size.height,
      child: Image.asset(
        'assets/launcher/homecare_gps_logo.png',
        fit: BoxFit.contain,
      ),
    );
  }
}
