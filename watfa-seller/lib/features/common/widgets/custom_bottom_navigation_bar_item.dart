import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../core/theme/colors.dart';


class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50.w(context),
        height: 50.h(context),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManagers.purple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset("assets/images/Star 6.png"),
        )); 
  }
}

