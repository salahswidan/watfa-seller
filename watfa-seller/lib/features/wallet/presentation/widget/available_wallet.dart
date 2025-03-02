import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';


class AvailableWallet extends StatelessWidget {
  const AvailableWallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: ColorsManagers.purple),
        ),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/wallet screen.png",
                width: 40,
              ),
              verticalSpacing(30),
              Text(
                "Available to use".tr(context),
                style:
                    TextStyles.font15RussianVioletW600Manrope(context),
              ),
              verticalSpacing(15),
              Text(
                "${"AED".tr(context)} 0.00",
                style: TextStyles.font32GraniteGrayW700Manrope(context),
              ),
              verticalSpacing(20),
            ],
          ),
        ));
  }
}
