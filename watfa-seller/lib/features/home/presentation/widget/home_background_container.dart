import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/colors.dart';

class HomeBackgroundContainer extends StatelessWidget {
  final Widget child;
  const HomeBackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsManagers.lavender,
            Colors.white,
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height: context.screenHeight,
      width: context.screenWidth,
      child: SafeArea(child: child),
    );
  }
}
