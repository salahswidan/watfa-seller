import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class UnSelectedInstallmentContainer extends StatelessWidget {
  const UnSelectedInstallmentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: ColorsManagers.silverSand),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: ColorsManagers.gray),
          horizontalSpacing(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                 "1” ${"Installment".tr(context)}",
                style: TextStyles.font14Blackw600Roboto(context),
              ),
              verticalSpacing(3),
              Text("23 Dec 2024",
                  style: TextStyles.font10GrayW600Roboto(context)),
            ],
          ),
          Expanded(child: SizedBox()),
          Text(
            "ASR 84.00",
            style: TextStyles.font13PurpleW500Roboto(context),
          )
        ],
      ),
    );
  }
}
