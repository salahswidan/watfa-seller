import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/widgets/default_app_bar.dart';
import '../section/store_row.dart';
import '../widget/category_container.dart';
import '../widget/category_divider.dart';

class CategoryScreen extends StatefulWidget {
  final int selectedCategory;
  const CategoryScreen({super.key, required this.selectedCategory});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late int selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.selectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Browse by category".tr(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h(context)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      5,
                      (index) {
                        final categories = [
                          {
                            "imageCategory": "assets/images/category_test.png",
                            "titleCategory": "Fashion"
                          },
                          {
                            "imageCategory": "assets/images/Beauty.png",
                            "titleCategory": "Beauty"
                          },
                          {
                            "imageCategory": "assets/images/Bags.png",
                            "titleCategory": "Bags"
                          },
                          {
                            "imageCategory": "assets/images/Accessories.png",
                            "titleCategory": "Accessor"
                          },
                          {
                            "imageCategory": "assets/images/Skincare.png",
                            "titleCategory": "Skincare"
                          },
                        ];

                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = index;
                              });
                            },
                            child: CategoryContainer(
                              imageCategory: categories[index]
                                  ["imageCategory"]!,
                              titleCategory: categories[index]
                                  ["titleCategory"]!,
                              isSelected: index == selectedCategory,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              CategoryDivider(),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final stores = [
                    {
                      "imageStore": "assets/images/shein.png",
                      "storeName": "Shein"
                    },
                    {
                      "imageStore": "assets/images/hmlogo.png",
                      "storeName": "H&M"
                    },
                    {
                      "imageStore": "assets/images/nikeLogo.png",
                      "storeName": "Nike"
                    },
                    {
                      "imageStore": "assets/images/nextLogo.png",
                      "storeName": "Next"
                    },
                    {
                      "imageStore": "assets/images/levelLogo.png",
                      "storeName": "Level Shoes"
                    },
                  ];

                  return FadeInRight(
                    delay: Duration(milliseconds: index * 100),
                    child: StoreRow(
                      imageStore: stores[index]["imageStore"]!,
                      storeName: stores[index]["storeName"]!.tr(context),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return CategoryDivider();
                },
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
