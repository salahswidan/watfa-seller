import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';

import '../../../../core/theme/styles.dart';
import '../widgets/all_up_coming_payments_container.dart';
import '../widgets/up_coming_payment_container.dart';

class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        isRoute: true,
        title: "Purchases".tr(context),
        hasBackArrow: true,
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInRight(child: AllUpComingPaymentsContainer()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: FadeInRight(
                  delay: const Duration(milliseconds: 150),
                  child: Text(
                    "upcoming payments".tr(context),
                    style: TextStyles.font20BlackW500Outfit(context),
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FadeInRight(
                      delay: Duration(milliseconds: (index + 2) * 150),
                      child: UpComingPaymentContainer());
                },
                separatorBuilder: (context, index) {
                  return verticalSpacing(15);
                },
              ),
              verticalSpacing(15),
            ],
          ),
        ),
      ),
    );
  }
}
