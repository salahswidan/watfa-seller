import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import 'package:watfa/core/widgets/custom_divider.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/custom_gradient_container.dart';

import '../../../sign_up_buyer/presentation/section/biometric_auth.dart';
import '../../logic/biometric_auth.dart';
import '../section/dont_have_acc.dart';
import '../section/fixed_login_data.dart';
import '../section/login_form.dart';
import '../section/social_auth.dart';
import '../widget/finger_print_access.dart';
import '../widget/forget_password.dart';
import '../widget/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomGradientContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(
              children: [
                FixedLoginData(),
                LoginForm(),
                ForgetPassword(),
                LoginBlocListener(),
                FingerPrintAccess(),
                BiometricAuth(
                  onTapFingerPrint: () {
                    LocalAuthApi.authenticateWithFingerprint();
                  },
                ),
                const CustomDivider(),
                Text(
                  "sign in using".tr(context),
                  style: TextStyles.font15CharlestonGreenw400Roboto(context),
                ),
                SocialAuth(
                  onTapGoogle: () {},
                  onTapApple: () {},
                  onTapFaceBook: () {},
                ),
                const DontHaveAcc(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
