import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_gradient_container.dart';
import '../../get_started/presentation/widgets/get_started_button.dart';
import '../../login/presentation/widget/logo.dart';

class PasswordUpdatedScreen extends StatelessWidget {
  const PasswordUpdatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomGradientContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(flex: 2, child: verticalSpacing(80)),
            const Logo(),
            Flexible(flex: 2, child: verticalSpacing(60)),
            Text("Password Updated".tr(context),
                style: TextStyles.font24Blackw700Roboto(context)),
            verticalSpacing(18),
            Text(
              "Password Updated Successfully.".tr(context),
              style: TextStyles.font14DarkSilverw400Roboto(context),
              textAlign: TextAlign.center,
            ),
            Flexible(flex: 2, child: verticalSpacing(80)),
            Expanded(
              flex: 8,
              child: AspectRatio(
                  aspectRatio: 293 / 229,
                  child: Image.asset("assets/images/password_updated.png")),
            ),
            Flexible(flex: 2, child: verticalSpacing(80)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GetStartedButton(
                onTap: () {
                  context.pushNamedAndRemoveUntil(Routes.loginScreen);
                },
                text: 'Sign in'.tr(context),
              ),
            ),
            Flexible(flex: 4, child: verticalSpacing(180)),
          ],
        ),
      ),
    ));
  }
}
