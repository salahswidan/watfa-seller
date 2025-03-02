import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../select_plan/presentation/screen/confirm_screen.dart';

class UpComingPaymentContainer extends StatelessWidget {
  const UpComingPaymentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: ColorsManagers.platinum),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: ColorsManagers.purple,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/images/shein.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  horizontalSpacing(10),
                  Text("Shein",
                      style: TextStyles.font14OuterSpaceW500Poppins(context)),
                ],
              ),
              Text("Due in 30 days".tr(context),
                  style: TextStyles.font10OuterSpaceW400Poppins(context)),
            ],
          ),
          verticalSpacing(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("${"SAR".tr(context)} 150",
                  style: TextStyles.font14BlackW700Poppins(context)),
              Container(),
              GestureDetector(
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
                                        Navigator.pop(context);
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
                    },
                  );
                },
                child: Text("Pay".tr(context),
                    style: TextStyles.font14PurpleW700Poppins(context)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
