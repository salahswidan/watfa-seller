import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';
import '../../../auth/login/presentation/widget/logo.dart';
import '../../../auth/verify/presentation/widgets/custom_verify_button.dart';
import '../../../auth/verify/presentation/widgets/pinput_field.dart';

class VerifyShopScreen extends StatelessWidget {
  final bool comeFromPayment;
  const VerifyShopScreen({super.key, this.comeFromPayment = true});

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
                "We sent a reset link to mariamfawzy.com enter 4 digit code that mentioned in the email"
                    .tr(context),
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
                    child: Text("Change".tr(context),
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
                  text: "Verify".tr(context)),
              verticalSpacing(20),
              CustomVerifyButton(
                  onTap: () {}, text: "Resend Code (0:22)".tr(context)),
            ],
          ),
        ),
      ),
    );
  }
}
