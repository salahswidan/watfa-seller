import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/styles.dart';


class ActiveBottomNavigationBarItem extends StatelessWidget {
  final String image;
  final String text;
  const ActiveBottomNavigationBarItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset( 
          image,
          width: 24.w(context),
          color: ColorsManagers.purple,
        ),
        verticalSpacing(5.h(context)),
        Text(
          text.tr(context),
          style: TextStyles.font12PurpleW500Poppins(context),
        ),
      ],
    );
  }
}
