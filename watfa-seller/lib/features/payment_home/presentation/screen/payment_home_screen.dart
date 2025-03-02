import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widget/payment_home_image.dart';
import '../widget/payment_method_container.dart';

class PaymentHomeScreen extends StatelessWidget {
  const PaymentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        isRoute: true,
        title: "Payment Method".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // FadeInDown(
              //   child: Center(
              //     child: Text(
              //       "Payment Method".tr(context),
              //       style: TextStyles.font24PurpleW700Manropes(context),
              //     ),
              //   ),
              // ),
              Flexible(child: verticalSpacing(60)),
              PaymentHomeImage(),
              Flexible(child: verticalSpacing(80)),
              Text(
                "you don’t have any saved cards yet.".tr(context),
                style: TextStyles.font24BlackW500Outfit(context),
              ),
              verticalSpacing(20),
              Text(
                "all saved cards here once you add them".tr(context),
                style: TextStyles.font16SonicSilverW400Outfit(context),
              ),
              Flexible(child: verticalSpacing(60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentMethodContainer(
                    text: "Credit Card".tr(context),
                    icon: Icons.credit_card,
                    onTap: () {
                      context.pushNamed(Routes.addNewCardScreen);
                    },
                  ),
                  horizontalSpacing(20),
                  PaymentMethodContainer(
                    text: "Bank account".tr(context),
                    icon: Icons.account_balance,
                    onTap: () {
                      context.pushNamed(Routes.bankAccountScreen);
                    },
                  ),
                ],
              ),
              Flexible(child: verticalSpacing(100)),
            ],
          ),
        ),
      ),
    );
  }
}
