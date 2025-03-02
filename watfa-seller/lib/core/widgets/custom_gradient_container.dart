import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../theme/colors.dart';

class CustomGradientContainer extends StatelessWidget {
  final Widget child;
  const CustomGradientContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsManagers.lavender,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      height: context.screenHeight,
      width: context.screenWidth,
      child: child,
    );
  }
}
