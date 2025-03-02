import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/widgets/default_app_bar.dart';
import 'package:watfa/features/auth/get_started/presentation/widgets/get_started_button.dart';
import 'package:watfa/features/payment/presentation/screen/payment_screen.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class ProductDetails extends StatelessWidget {
  final bool? hasAppBar;
  final String image;
  final String title;
  const ProductDetails(
      {super.key,
      this.hasAppBar = true,
      required this.image,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hasAppBar! ? DefaultAppBar() : null,
      backgroundColor: ColorsManagers.cultured,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      height: 260.h(context),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    title.tr(context),
                    style: TextStyles.font20blackOliveW500Manrope(context),
                  ),
                ),
              ),
              verticalSpacing(25.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SAR 230.00".tr(context),
                      style: TextStyles.font20blackOliveW700Manrope(context),
                    ),
                    Text(
                      "SAR 512.58".tr(context),
                      style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff404040),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "shein".tr(context),
                      style: TextStyles.font24darkBlackW700Manrope(context),
                    ),
                  ],
                ),
              ),
              verticalSpacing(16.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, size: 24, color: Color(0xffEBB65B)),
                        SizedBox(width: 4),
                        Text(
                          "4.9",
                          style:
                              TextStyles.font16blackOliveW400Manrope(context),
                        ),
                      ],
                    ),
                    Container(
                      width: 76.w(context),
                      height: 30.h(context),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: ColorsManagers.purple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "45% OFF".tr(context),
                          style: TextStyles.font10WhiteW600Manrope(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpacing(40.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Row(
                  children: [
                    Text(
                      "Product Description".tr(context),
                      style: TextStyles.font18BlackOliverW700Manrope(context),
                    ),
                    horizontalSpacing(170.w(context)),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 20,
                    )
                  ],
                ),
              ),
              verticalSpacing(10.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "SHEGLAM Makeup - Jelly Wow Hydrating Lip Oil - Long-wearing moisturizing, non-sticky Plumping Lip Gloss with Sponge Tip Applicator"
                      .tr(context),
                  style: TextStyles.font14BlackOliverW400Manrope(context),
                ),
              ),
              verticalSpacing(30.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "About this item".tr(context),
                  style: TextStyles.font18BlackOliverW700Manrope(context),
                ),
              ),
              verticalSpacing(5.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "  • Formulated with care".tr(context),
                  style: TextStyles.font16Blackw400Roboto(context),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "  • Brand: SHEGLAM".tr(context),
                  style: TextStyles.font16Blackw400Roboto(context),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "  • It will be an excellent pick for you".tr(context),
                  style: TextStyles.font16Blackw400Roboto(context),
                ),
              ),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Text(
                  "  • Comes with proper packaging".tr(context),
                  style: TextStyles.font16Blackw400Roboto(context),
                ),
              ),
              verticalSpacing(85.h(context)),
              FadeInLeft(
                delay: Duration(milliseconds: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 55.h(context),
                        width: 64.w(context),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorsManagers.cultured,
                            border: Border.all(color: ColorsManagers.purple)),
                        child: Center(
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: ColorsManagers.blackOlive,
                          ),
                        )),
                    horizontalSpacing(15.w(context)),
                    GetStartedButton(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PaymentScreen()));
                      },
                      text: "Shop".tr(context),
                      isShop: true,
                    ),
                  ],
                ),
              ),
              verticalSpacing(27.h(context)),
            ],
          ),
        ),
      ),
    );
  }
}
