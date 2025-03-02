import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class AllUpComingPaymentsContainer extends StatelessWidget {
  const AllUpComingPaymentsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: ColorsManagers.purple),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Text(
                "All upcoming payments".tr(context),
                style: TextStyles.font15RussianVioletW600Manrope(context),
              ),
              verticalSpacing(15),
              Text(
                "${"SAR".tr(context)} 300",
                style: TextStyles.font32GraniteGrayW700Manrope(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
