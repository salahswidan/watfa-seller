
import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class CategoryDivider extends StatelessWidget {
  const CategoryDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Divider(
        color: ColorsManagers.lightSilver,
      ),
    );
  }
}
