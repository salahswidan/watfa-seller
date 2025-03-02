
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../widget/logo.dart';

class FixedLoginData extends StatelessWidget {
  const FixedLoginData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Column(
        children: [
          Flexible(flex: 2, child: verticalSpacing(80)),
          const Logo(),
          Flexible(child: verticalSpacing(28)),
          Text("Welcome back!".tr(context),
              style: TextStyles.font24Blackw700Roboto(context)),
          Flexible(child: verticalSpacing(18)),
          Text("Log in to existing watfa account".tr(context),
              style: TextStyles.font14DarkSilverw400Roboto(context)),
          Flexible(child: verticalSpacing(50)),
        ],
      ),
    );
  }
}
