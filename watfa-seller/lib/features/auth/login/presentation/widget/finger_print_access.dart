
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';

class FingerPrintAccess extends StatelessWidget {
  const FingerPrintAccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Column(
        children: [
          Flexible(child: verticalSpacing(40)),
          Text(
            "Use Biometric Access".tr(context),
            style: TextStyles.font20OuterSpaceW600Poppins(context),
          ),
          Flexible(
            child: verticalSpacing(40),
          ),
        ],
      ),
    );
  }
}
