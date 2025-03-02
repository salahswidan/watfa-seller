import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/features/orders_and_payouts/widgets/custom_card_content.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/default_app_bar.dart';

class PayoutsScreen extends StatelessWidget {
  const PayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: DefaultAppBar(
          isSeller: true,
          hasBackArrow: true,
          title: "Payouts".tr(context),
        ),
        backgroundColor: ColorsManagers.cultured,
        body: Column(
          children: [
            verticalSpacing(35.h(context)),
            FadeInRight(
              delay: Duration(milliseconds: 150),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 47, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: ColorsManagers.purple,
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: "Complete".tr(context)),
                    Tab(text: "Upcoming".tr(context)),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  CustomCardContent(
                    isPayouts: true,
                  ),
                  Center(child: Text("Upcoming Tasks")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
