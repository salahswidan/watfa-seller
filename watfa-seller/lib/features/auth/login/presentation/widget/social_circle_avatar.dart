import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/colors.dart';

class SocialCircleAvatar extends StatelessWidget {
  final String icon;
  final void Function()? onTap;
  const SocialCircleAvatar({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: ColorsManagers.cultured,
        child: SvgPicture.asset(
          icon,
          height: 40,
          fit: BoxFit.scaleDown,
          width: 40,
        ),
      ),
    );
  }
}
