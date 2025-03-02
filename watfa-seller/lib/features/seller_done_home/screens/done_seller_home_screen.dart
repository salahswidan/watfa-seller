import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../core/theme/colors.dart';
import '../../seller_home/section/app_drawer.dart';
import '../../seller_home/widgets/seller_home_app_bar.dart';
import '../../seller_home/widgets/step_progress_widget.dart';
import '../section/indicator_boxes.dart';

class DoneSellerHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManagers.cultured,
      appBar: SellerHomeAppBar(
        isDone: true,
      ),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpacing(30.h(context)),
            FadeInRight(
              delay: const Duration(milliseconds: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StepProgressWidget(
                    steps: [
                      StepData(title: "Business".tr(context), isActive: true),
                      StepData(title: "Legal".tr(context), isActive: true),
                      StepData(title: "Bank".tr(context), isActive: true),
                    ],
                  ),
                ],
              ),
            ),
            verticalSpacing(59.h(context)),
            FadeInRight(
              delay: const Duration(milliseconds: 300),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final bool isSmallScreen = constraints.maxWidth < 600;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: IndicatorBoxes(
                          title: "Total Orders".tr(context),
                          value: "6780".tr(context),
                        ),
                      ),
                      SizedBox(
                          width: isSmallScreen ? 4.w(context) : 8.w(context)),
                      Expanded(
                        child: IndicatorBoxes(
                          title: "GMV".tr(context),
                          value: "SAR 55,542".tr(context),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
