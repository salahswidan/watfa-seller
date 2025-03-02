import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../login/presentation/widget/logo.dart';
import '../widgets/pinput_field.dart';
import '../widgets/custom_verify_button.dart';

class VerifyScreen extends StatelessWidget {
  final bool comeFromPayment;
  const VerifyScreen({super.key, this.comeFromPayment = false});

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
              Text("Check Your Email".tr(context),
                  style: TextStyles.font24Blackw700Roboto(context)),
              verticalSpacing(18),
              Text(
                "We sent a reset link to mariamfawzy.com enter 4 digit code that mentioned in the email",
                style: TextStyles.font14DarkSilverw400Roboto(context),
                textAlign: TextAlign.center,
              ),
              Expanded(child: verticalSpacing(40)),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text("Change",
                        style: TextStyles.font16Purplew500Roboto(context))),
              ),
              verticalSpacing(20),
              const PinputField(),
              Flexible(flex: 2, child: verticalSpacing(100)),
              GetStartedButton(
                  onTap: () {
                    comeFromPayment
                        ? context.pushNamed(Routes.shippingAddressScreen)
                        : context.pushNamed(Routes.resetPasswordScreen);
                  },
                  text: "Reset"),
              verticalSpacing(20),
              CustomVerifyButton(onTap: () {}, text: "Resend Code (0:22)"),
            ],
          ),
        ),
      ),
    );
  }
}
