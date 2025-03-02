import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?".tr(context),
          style:
              TextStyles.font16DarkLiverw400Roboto(context),
        ),
        horizontalSpacing(5),
        InkWell(
          onTap: () {
            context.pop();
          },
          child: Text(
            'Log In'.tr(context),
            style:
                TextStyles.font16Purplew700Roboto(context)
                    .copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
