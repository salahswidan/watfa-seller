import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import 'package:watfa/features/home/presentation/widget/verify_shop_screen.dart';
import 'package:watfa/features/payment/logic/model/container_model.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../section/payment_form.dart';
import '../widgets/payment_container.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selected = 0;
  int selectedIndexSection = 0;
  @override
  Widget build(BuildContext context) {
    final List<ContainerModel> data = [
      ContainerModel(
        title: "Equal Installments Over 2 Months".tr(context),
        description:
            r"The total amount of $336 is divided into two equal payments of $84 each."
                .tr(context),
      ),
      ContainerModel(
        title: "Equal Installments Over 3 Months".tr(context),
        description:
            r"The total amount of $336 is divided into three equal payments of $84 each."
                .tr(context),
      ),
      ContainerModel(
        title: "Equal Installments Over 6 Months".tr(context),
        description:
            r"The total amount of $336 is divided into six equal payments of $84 each."
                .tr(context),
      ),
    ];
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Payment by Watfa".tr(context),
        hasBackArrow: false,
      ),
      backgroundColor: ColorsManagers.cultured,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                selectedIndexSection == 0
                    ? ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = index;
                              });
                            },
                            child: FadeInRight(
                              delay: Duration(milliseconds: index * 150),
                              child: PaymentContainer(
                                model: data[index],
                                isSelected: selected == index,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return verticalSpacing(25);
                        },
                        itemCount: data.length)
                    : PaymentForm(),
                GetStartedButton(
                    onTap: () {
                      if (selectedIndexSection == 0) {
                        setState(() {
                          selectedIndexSection = 1;
                        });
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VerifyShopScreen()));
                      }
                    },
                    text: selectedIndexSection == 0
                        ? "Continue".tr(context)
                        : "Verification".tr(context)),
                verticalSpacing(1)
              ]),
        ),
      ),
    );
  }
}
