import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/seller_done_home/screens/done_seller_home_screen.dart';
import '../../../core/theme/styles.dart';
import '../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../section/bank_information_screen_form.dart';

class BankInformationScreen extends StatelessWidget {
  const BankInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        isSeller: true,
        hasBackArrow: true,
        title: "Bank Information".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FadeInRight(
                delay: const Duration(milliseconds: 150),
                child: Text(
                  textAlign: TextAlign.center,
                  "Please ensure the information you have entered is accurate to avoid application rejection and onboarding delays."
                      .tr(context),
                  style: TextStyles.font13darkSilverW600Roboto(context),
                ),
              ),
              verticalSpacing(41.h(context)),
              BankInformationScreenForm(),
              verticalSpacing(137.h(context)),
              GetStartedButton(
                  isSeller: true,
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => DoneSellerHomeScreen()),
                        (route) => false);
                  },
                  text: "Send".tr(context)),
              verticalSpacing(35.h(context)),
            ],
          ),
        ),
      ),
    );
  }
}
