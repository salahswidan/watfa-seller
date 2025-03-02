import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/globals.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class StoreRow extends StatelessWidget {
  const StoreRow({
    super.key,
    required this.imageStore,
    required this.storeName,
  });
  final String imageStore;
  final String storeName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h(context)),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: ColorsManagers.purple,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageStore,
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpacing(15.w(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                storeName,
                style: TextStyles.font24BlackOliveW700Manrope(context),
              ),
              verticalSpacing(5.h(context)),
              Row(
                children: [
                  Image.asset(
                    "assets/images/device_shop.png",
                    width: 22,
                  ),
                  horizontalSpacing(10.w(context)),
                  Text(
                    "online".tr(context),
                    style: TextStyles.font15GraniteGrayw400Manrope(context),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
