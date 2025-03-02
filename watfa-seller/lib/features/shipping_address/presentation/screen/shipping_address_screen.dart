import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';

import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../section/shipping_address_form.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        title: "Shipping Address".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShippingAddressForm(),
            GetStartedButton(
                onTap: () {
                  context.pushNamed(Routes.selectPlanScreen);
                },
                text: "Next".tr(context)),
            verticalSpacing(1),
          ],
        ),
      ),
    );
  }
}
