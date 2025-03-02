import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../get_started/presentation/widgets/get_started_button.dart';
import '../../../login/presentation/widget/logo.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
            Text("Reset Password".tr(context),
                style: TextStyles.font24Blackw700Roboto(context)),
            verticalSpacing(18),
            Text(
              "Reset Your Password".tr(context),
              style: TextStyles.font14DarkSilverw400Roboto(context),
              textAlign: TextAlign.center,
            ),
            Flexible(flex: 2, child: verticalSpacing(55)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password".tr(context),
                style:
                    TextStyles.font14SacramentoStateGreenw500Poppins(context),
              ),
            ),
            AuthTextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password'.tr(context);
                }
                return null;
              },
              isPassword: true,
              hintText: 'Password'.tr(context),
              controller: TextEditingController(),
            ),
            verticalSpacing(20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Confirm Password".tr(context),
                style:
                    TextStyles.font14SacramentoStateGreenw500Poppins(context),
              ),
            ),
            AuthTextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password'.tr(context);
                }
                return null;
              },
              isPassword: true,
              hintText: 'Confirm Password'.tr(context),
              controller: TextEditingController(),
            ),
            Flexible(flex: 2, child: verticalSpacing(80)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GetStartedButton(
                onTap: () {
                  context.pushNamed(Routes.passwordUpdatedScreen);
                },
                text: 'UPDATE'.tr(context),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
