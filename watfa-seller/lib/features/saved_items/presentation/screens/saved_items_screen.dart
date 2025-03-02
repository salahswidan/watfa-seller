import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/features/home/presentation/section/product_details.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widgets/saved_item.dart';

class SavedItemsScreen extends StatelessWidget {
  const SavedItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final savedItems = [
      {"image": "assets/images/fashion_image.png"},
      {"image": "assets/images/dress2.png"},
      {"image": "assets/images/dress3.png"},
      {"image": "assets/images/dress4.png"},
      {"image": "assets/images/dress5.png"},
    ];

    return Scaffold(
      appBar: DefaultAppBar(
        title: "Saved items".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: savedItems.length,
                separatorBuilder: (context, index) => verticalSpacing(20),
                itemBuilder: (context, index) => FadeInRight(
                  delay: Duration(milliseconds: index * 200),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProductDetails(
                                title: "dress",
                                image: savedItems[index]["image"]!,
                              )));
                    },
                    child: SavedItem(
                      image: savedItems[index]["image"]!,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
