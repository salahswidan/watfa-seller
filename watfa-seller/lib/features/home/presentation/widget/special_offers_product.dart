import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/features/home/presentation/section/product_details.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class SpecialOffersProduct extends StatefulWidget {
  const SpecialOffersProduct({
    super.key,
  });

  @override
  _SpecialOffersProductState createState() => _SpecialOffersProductState();
}

class _SpecialOffersProductState extends State<SpecialOffersProduct> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h(context),
      width: 198.w(context),
      decoration: BoxDecoration(
        color: ColorsManagers.lavenderBlush,
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                title: "lip gloss",
                image: "assets/images/product.png",
              ),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                          color: ColorsManagers.purple,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          "45% OFF".tr(context),
                          style: TextStyles.font10WhiteW600Manrope(context),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                        child: Icon(
                          isBookmarked
                              ? Icons.bookmark
                              : Icons.bookmark_border_outlined,
                          color: isBookmarked
                              ? ColorsManagers.purple
                              : ColorsManagers.blackOlive,
                        ),
                      ),
                    ],
                  ),
                  verticalSpacing(160.h(context)),
                  Text(
                    "${"SAR".tr(context)} 230.00",
                    style: TextStyles.font17BlackOliveW700Manrope(context),
                  ),
                  Text(
                    "${"SAR".tr(context)} 460.00",
                    style: TextStyles.font12BlackOliveW400Manrope(context)
                        .copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: ColorsManagers.sunRay,
                      ),
                      Text("4.5",
                          style:
                              TextStyles.font12BlackOliveW400Manrope(context)),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -6.h(context),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/product.png",
                    width: 140.w(context),
                  ),
                  Text("lip gloss".tr(context),
                      style: TextStyles.font14BlackwOliveW400Manrope(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
