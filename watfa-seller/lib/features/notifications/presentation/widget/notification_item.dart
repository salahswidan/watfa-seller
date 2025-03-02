import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w(context),
        vertical: 15.h(context),
      ),
      decoration: BoxDecoration(
        color: ColorsManagers.magnolia,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/icon.png",
            width: 60.w(context),
            height: 60.h(context), // Ensure a fixed height
            fit: BoxFit.contain,
          ),
          horizontalSpacing(15.w(context)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Flipcart Shopping Offer".tr(context),
                        style: TextStyles.font16GraniteGrayW600Nunito(context),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    horizontalSpacing(10.w(context)),
                    Text(
                      "1 min ago".tr(context),
                      style: TextStyles.font10Blackw400Roboto(context),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                verticalSpacing(5.h(context)),
                Text(
                  "Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply"
                      .tr(context),
                  style: TextStyles.font10GraniteGrayW600Nunito(context),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
