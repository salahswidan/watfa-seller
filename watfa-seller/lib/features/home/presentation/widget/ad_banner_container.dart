import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';


class AdBannerContainer extends StatelessWidget {
  const AdBannerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 200.h(context),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              height: 160.h(context),
              decoration: BoxDecoration(
                color: ColorsManagers.purple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white.withOpacity(.3)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 5,
                        ),
                        child: Text("Ad".tr(context),
                            style: TextStyles.font11WhiteW400Manrope(
                                context)),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text("Offers to 70 %".tr(context),
                      style:
                          TextStyles.font24WhiteW700Manrope(context)),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
            PositionedDirectional(
                end: 0,
                bottom: -19.h(context),
                child: Image.asset(
                  'assets/images/home_ad_offer.png',
                  width: 157.w(context),
                )),
          ],
        ),
      ),
    );
  }
}
