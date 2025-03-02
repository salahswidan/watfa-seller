import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CategoryContainer extends StatelessWidget {
  final bool isSelected;
  final String imageCategory;
  final String titleCategory;
  const CategoryContainer({
    super.key,
    required this.isSelected,
    required this.imageCategory,
    required this.titleCategory,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ColorsManagers.magnolia,
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(
                color: ColorsManagers.wisteria,
                width: 2,
              )
            : null,
      ),
      child: Column(
        children: [
          Image.asset(
            imageCategory,
            width: 38.w(context),
            height: 38.h(context),
          ),
          verticalSpacing(3.h(context)),
          Text(titleCategory.tr(context),
              style: TextStyles.font8Blackw500Podkova(context)),
        ],
      ),
    );
  }
}
