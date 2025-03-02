import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../login/presentation/widget/logo.dart';
import '../section/get_started_form.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(flex: 3, child: verticalSpacing(120)),
            const Logo(),
            Flexible(child: verticalSpacing(40)),
            // Text("Please select profile".tr(context),
            //     style: TextStyles.font24Blackw700Roboto(context)),
            verticalSpacing(10),
            Text(
              "Create an account  to get all features".tr(context),
              style: TextStyles.font14DarkSilverw400Roboto(context),
            ),
            Flexible(flex: 5, child: verticalSpacing(200)),
            const Expanded(flex: 10, child: GetStartedForm()),

            //  Flexible(flex: 4, child: verticalSpacing(160)),
          ],
        ),
      ),
    );
  }
}
