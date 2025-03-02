import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../section/radio_switch.dart';

class PlatformContainer extends StatelessWidget {
  final String image, title;
  final bool isSelected;
  final void Function() onTap;
  final String subTitle;
  const PlatformContainer({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    required this.isSelected,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
            color: ColorsManagers.antiFlashWhite,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 25.h(context),
            ),
            horizontalSpacing(10.w(context)),
            Text(title, style: TextStyles.font18Blackw400Poppins(context)),
            Expanded(child: SizedBox()),
            RadioSwitch(
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
