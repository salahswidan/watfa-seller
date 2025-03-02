import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/select_plan/presentation/screen/confirm_screen.dart';
import '../../../../core/theme/colors.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../widgets/payment_container.dart';
import '../widgets/selected_installment_container.dart';
import '../widgets/un_selected_installment_container.dart';

class SelectPlanScreen extends StatefulWidget {
  const SelectPlanScreen({super.key});

  @override
  State<SelectPlanScreen> createState() => _SelectPlanScreenState();
}

class _SelectPlanScreenState extends State<SelectPlanScreen> {
  int selectedPayment = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        hasBackArrow: true,
        title: "Payment by Watfa".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: verticalSpacing(40)),
            Text(
              "Equal Installment Over 3 Months".tr(context),
              style: TextStyles.font18BlackW600Roboto(context),
            ),
            Flexible(flex: 2, child: verticalSpacing(40)),
            SelectedInstallmentContainer(),
            Flexible(child: verticalSpacing(20)),
            UnSelectedInstallmentContainer(),
            Flexible(child: verticalSpacing(20)),
            UnSelectedInstallmentContainer(),
            Flexible(child: verticalSpacing(20)),
            Text(
              "Payment Methods".tr(context),
              style: TextStyles.font18RaisinBlackw600Ralway(context),
            ),
            Flexible(child: verticalSpacing(20)),
            PaymentContainer(
              text: "debit/credit cards".tr(context),
              isSelected: selectedPayment == 0,
              onTap: () {
                setState(() {
                  selectedPayment = 0;
                });
              },
            ),
            Flexible(child: verticalSpacing(15)),
            PaymentContainer(
              text: "Bank account".tr(context),
              isSelected: selectedPayment == 1,
              onTap: () {
                setState(() {
                  selectedPayment = 1;
                });
              },
            ),
            Flexible(child: verticalSpacing(15)),
            PaymentContainer(
              text: "Add New Card".tr(context),
              isSelected: selectedPayment == 2,
              onTap: () {
                setState(() {
                  selectedPayment = 2;
                });
              },
            ),
            Flexible(child: verticalSpacing(25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price".tr(context),
                  style: TextStyles.font18RaisinBlackw600Ralway(context),
                ),
                Text(
                  "ASR 84.00",
                  style: TextStyles.font16Purplew600Roboto(context),
                )
              ],
            ),
            Flexible(child: verticalSpacing(25)),
            GetStartedButton(
              text: "Pay First Installment".tr(context),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      int selectedCardIndex = -1;

                      return StatefulBuilder(
                        builder: (context, setState) {
                          return Container(
                            padding: const EdgeInsets.all(37),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Choose Payment Method".tr(context),
                                      style:
                                          TextStyles.font18OuterSpaceW400Roboto(
                                              context),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.pop();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        color: ColorsManagers.outerSpace,
                                      ),
                                    ),
                                  ],
                                ),
                                verticalSpacing(35),
                                Text(
                                  "Existing Card".tr(context),
                                  style:
                                      TextStyles.font14PhilippineGrayW400Roboto(
                                          context),
                                ),
                                verticalSpacing(20),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedCardIndex = 0;
                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ConfirmScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: ColorsManagers.lightgrey,
                                      border: Border.all(
                                        color: selectedCardIndex == 0
                                            ? ColorsManagers.purple
                                            : ColorsManagers.silverSand,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/visa.png"),
                                        horizontalSpacing(10),
                                        Text(
                                          "**** 1234",
                                          style: TextStyles
                                              .font14blackOliveW500Roboto(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                verticalSpacing(20),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedCardIndex = 1;
                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ConfirmScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: ColorsManagers.lightgrey,
                                      border: Border.all(
                                        color: selectedCardIndex == 1
                                            ? ColorsManagers.purple
                                            : ColorsManagers.silverSand,
                                      ),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                            "assets/images/masterCard.png"),
                                        horizontalSpacing(10),
                                        Text(
                                          "**** 4887",
                                          style: TextStyles
                                              .font14blackOliveW500Roboto(
                                                  context),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
