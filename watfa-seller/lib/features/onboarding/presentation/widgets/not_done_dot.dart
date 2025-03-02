import 'package:flutter/material.dart';
import 'package:watfa/core/theme/colors.dart';

class NotDoneDot extends StatelessWidget {
  const NotDoneDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13,
      width: 13,
      decoration: const BoxDecoration(
        color: ColorsManagers.philippineSilver,
        shape: BoxShape.circle,
      ),
    );
  }
}
