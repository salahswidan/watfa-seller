import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/spacing.dart';
import '../section/category_home_section.dart';
import '../section/home_app_bar.dart';
import '../section/product_details.dart';
import '../widget/ad_banner_container.dart';
import '../widget/default_product.dart';
import '../widget/home_background_container.dart';
import '../widget/see_more_row.dart';
import '../widget/special_offers_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          HomeBackgroundContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: HomeAppBar(),
                  ),
                  SliverToBoxAdapter(
                    child: AdBannerContainer(),
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    verticalSpacing(40.h(context)),
                  ])),
               
                  SliverToBoxAdapter(
                    child: SeeMoreRow(
                      text: "Special Offers".tr(context),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            10,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SpecialOffersProduct(),
                                )),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SeeMoreRow(
                      text: "Fashion Offers".tr(context),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            10,
                            (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetails(
                                                  title: "baby blue blouse",
                                                  image:
                                                      "assets/images/fashion_image.png",
                                                )));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: DefaultProduct(
                                      image: 'assets/images/fashion_image.png',
                                      text: "baby blue blouse".tr(context),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SeeMoreRow(
                      text: "Bags Offers".tr(context),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            10,
                            (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetails(
                                                  title: "White bag",
                                                  image:
                                                      "assets/images/bag_image.png",
                                                )));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: DefaultProduct(
                                      image: 'assets/images/bag_image.png',
                                      text: "White bag".tr(context),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SeeMoreRow(
                      text: "SkinCare Offers".tr(context),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            10,
                            (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetails(
                                                  title: "Oily skincare",
                                                  image:
                                                      "assets/images/skincare_image.png",
                                                )));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: DefaultProduct(
                                      image: 'assets/images/skincare_image.png',
                                      text: "Oily skincare".tr(context),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: verticalSpacing(100.h(context)),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
