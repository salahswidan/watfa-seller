import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/features/home/presentation/screen/home_screen.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../widget/available_wallet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Wallet".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AvailableWallet(),
            Column(
              children: [
                Text("No transactions".tr(context),
                    style: TextStyles.font24BlackW500Outfit(context)),
                verticalSpacing(20),
                Text("Explore more offers and earn cashback".tr(context),
                    style: TextStyles.font16SonicSilverW400Outfit(context)),
              ],
            ),
            FadeInUp(
              child: GetStartedButton(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(builder: (context) =>  HomeScreen()),
                  // );
                   context.pushNamed(Routes.homeScreen);
                },
                text: 'Start Shopping'.tr(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
