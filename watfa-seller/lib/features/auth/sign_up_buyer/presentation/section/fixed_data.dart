import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../login/presentation/widget/logo.dart';


class FixedData extends StatelessWidget {
  const FixedData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpacing(60),
        const Logo(),
        verticalSpacing(28),
        Center(
          child: Text("Let’s Get Started!".tr(context),
              style: TextStyles.font24Blackw700Roboto(context)),
        ),
        verticalSpacing(18),
        Center(
          child: Text("Create an account  to get all features".tr(context),
              style: TextStyles.font14DarkSilverw400Roboto(context)),
        ),
        verticalSpacing(30),
      ],
    );
  }
}
