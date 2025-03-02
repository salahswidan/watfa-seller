import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class PaymentMethodContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onTap;
  const PaymentMethodContainer({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w(context),
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: ColorsManagers.purple),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24,
            color: ColorsManagers.purple,
          ),
          verticalSpacing(15),
          Text(text, style: TextStyles.font14IndigoW700Roboto(context)),
          verticalSpacing(15),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 20,
              width: 80.w(context),
              decoration: BoxDecoration(
                color: ColorsManagers.purple,
                borderRadius: BorderRadius.circular(2.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 1.77,
                    offset: const Offset(0, 1.77),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 12,
                    color: Colors.white,
                  ),
                  Text(
                    "Add".tr(context),
                    style: TextStyles.font10WhiteW600Roboto(context),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
