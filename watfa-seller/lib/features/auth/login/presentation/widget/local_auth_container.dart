import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/colors.dart';

class LocalAuthContainer extends StatelessWidget {
  final String image;
  final void Function() onTap;
  const LocalAuthContainer({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: ColorsManagers.lavenderWeb,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}
