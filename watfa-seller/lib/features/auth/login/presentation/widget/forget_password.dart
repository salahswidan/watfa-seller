
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            context.pushNamed(Routes.forgotPasswordScreen);
          },
          child: Text(
            'Forgot password?'.tr(context),
            style:
                TextStyles.font14Purplew500Poppins(context).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
