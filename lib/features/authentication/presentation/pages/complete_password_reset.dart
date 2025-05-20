import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';

class CompletePasswordReset extends StatelessWidget {
  const CompletePasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        desktop: Row(
          children: [
            GlobalLandingBanner(size: size),
          ],
        ),
        tablet: Row(
          children: [
            GlobalLandingBanner(size: size),
          ],
        ),
        mobile: GestureDetector(
          onTap: () => KeyboardUtil.hideKeyboard(context),
          child: const SingleChildScrollView(
            child: Column(),
          ),
        ),
      ),
    );
  }
}
