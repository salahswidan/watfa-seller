import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';

class OrderComplateScreen extends StatelessWidget {
  const OrderComplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(250.h(context)),
            Center(
                child: Image.asset("assets/images/check.png",
                    height: 208.h(context), width: 208.w(context))),
            verticalSpacing(26.h(context)),
            Text(
              "Order Captured".tr(context),
              textAlign: TextAlign.center,
              style: TextStyles.font24BlackW500Outfit(context),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: GetStartedButton(
                  isComplated: true,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.mainScreen);
                  },
                  text: "Go To Home Page".tr(context)),
            ),
            verticalSpacing(46.h(context)),
          ]),
    );
  }
}
