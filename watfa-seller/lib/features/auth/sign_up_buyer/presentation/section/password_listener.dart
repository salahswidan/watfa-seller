import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../../core/helpers/spacing.dart';

class PasswordListener extends StatelessWidget {
  final bool hasAtLeast8Characters,
      hasAtLeast1UpperCase,
      hasAtLeast1NumberOrSymbol;
  const PasswordListener(
      {super.key,
      required this.hasAtLeast8Characters,
      required this.hasAtLeast1UpperCase,
      required this.hasAtLeast1NumberOrSymbol});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordListnerItem(
          text: "At least 8 characters".tr(context),
          value: hasAtLeast8Characters,
        ),
        verticalSpacing(18),
        PasswordListnerItem(
          text: "1 uppercase letter".tr(context),
          value: hasAtLeast1UpperCase,
        ),
        verticalSpacing(18),
        PasswordListnerItem(
          text: "1 number or symbol".tr(context),
          value: hasAtLeast1NumberOrSymbol,
        ),
      ],
    );
  }
}

class PasswordListnerItem extends StatelessWidget {
  final bool value;
  final String text;
  const PasswordListnerItem(
      {super.key, required this.value, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svgs/check-circle.svg',
          colorFilter: !value
              ? const ColorFilter.mode(Colors.red, BlendMode.srcIn)
              : null,
        ),
        horizontalSpacing(8),
        Text(
          text,
          style: value
              ? TextStyles.font10DaveGrayw300Poppins(context)
              : TextStyles.font10DaveGrayw300Poppins(context)
                  .copyWith(color: Colors.red),
        )
      ],
    );
  }
}
