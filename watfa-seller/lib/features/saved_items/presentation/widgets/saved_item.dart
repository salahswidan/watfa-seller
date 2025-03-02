import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';

import '../../../../core/theme/styles.dart';

class SavedItem extends StatelessWidget {
  const SavedItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio: 110 / 104,
                child: Image.asset(
                 image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: horizontalSpacing(20)),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shein",
                  style: TextStyles.font15DimGrayW700Inter(context),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Baby blue blouse",
                  style: TextStyles.font13PhilipineSilverW400Inter(context),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "${"SAR".tr(context)} 230.00",
                  style: TextStyles.font17BlackOliveW700Manrope(context),
                ),
                Text(
                  "${"SAR".tr(context)} 300.00",
                  style: TextStyles.font12BlackOliveW400Manrope(context)
                      .copyWith(decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          Expanded(flex: 4, child: horizontalSpacing(20)),
          Icon(Icons.bookmark, color: ColorsManagers.purple),
        ],
      ),
    );
  }
}
