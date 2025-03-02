import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../screen/platform_details.dart';
import '../widget/platform_container.dart';

class ThirdSignUpSellerForm extends StatefulWidget {
  const ThirdSignUpSellerForm({super.key});

  static const List<String> productsOrServices = [
    "Clothes",
    "Electronics",
    "Furniture",
    "Food",
    "Books",
    "Beauty",
    "etc"
  ];

  @override
  State<ThirdSignUpSellerForm> createState() => _ThirdSignUpSellerFormState();
}

class _ThirdSignUpSellerFormState extends State<ThirdSignUpSellerForm> {
  late TextEditingController productsOrServicesController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    productsOrServicesController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      productsOrServicesController.text =
          ThirdSignUpSellerForm.productsOrServices[0].tr(context);
    });
  }

  @override
  void dispose() {
    productsOrServicesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "complete your Watfa profile".tr(context),
              textAlign: TextAlign.center,
              style: TextStyles.font20PhilippineGrayw500Roboto(context),
            ),
          ),
        ),
        verticalSpacing(40.h(context)),
        Text(
          "What products or services do you provide?".tr(context),
          style: TextStyles.font14RaisinBlackw500Poppins(context),
        ),
        AuthTextFormField(
          readOnly: true,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your products or services'.tr(context);
            }
            return null;
          },
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 60,
            maxHeight: 30,
          ),
          suffixIconWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () => buildShowModalBottomSheet(context),
              child: Image.asset("assets/images/Double Down.png"),
            ),
          ),
          hintText: "",
          controller: productsOrServicesController,
        ),
        verticalSpacing(35.h(context)),
        Text(
          "What platform are you using?".tr(context),
          style: TextStyles.font14Blackw500Poppins(context),
        ),
        verticalSpacing(15.h(context)),
        PlatformContainer(
          image: "assets/images/salla.png",
          title: "Salla".tr(context),
          subTitle:
              "You can obtain the bearer token from the developer settings in your Salla Dashboard."
                  .tr(context),
          isSelected: _selectedIndex == 0,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 1,
                  filedsNames: ["Bearer Token"],
                  title: "Salla",
                  subTitle:
                      "You can obtain the bearer token from the developer settings in your Salla Dashboard."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 0;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/Zid.png",
          title: "Zid".tr(context),
          subTitle:
              "You can find the API key in the API settings of your Zid Account."
                  .tr(context),
          isSelected: _selectedIndex == 1,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 1,
                  filedsNames: ["API Key"],
                  title: "Zid",
                  subTitle:
                      "You can find the API key in the API settings of your Zid Account."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 1;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/woocommerce.png",
          title: "WooCommerce".tr(context),
          subTitle:
              "You can generate the Consumer key and secret in the REST API section of WooCommerce settings."
                  .tr(context),
          isSelected: _selectedIndex == 2,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 2,
                  filedsNames: ["Consumer Key", "Consumer Secret"],
                  title: "WooCommerce",
                  subTitle:
                      "You can generate the Consumer key and secret in the REST API section of WooCommerce settings."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 2;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/shopify.png",
          title: "Shopify".tr(context),
          subTitle:
              "You can get the access token from the API settings in your Shopify Admin by creating a custom app."
                  .tr(context),
          isSelected: _selectedIndex == 3,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 1,
                  filedsNames: ["Access Token"],
                  title: "Shopify",
                  subTitle:
                      "You can get the access token from the API settings in your Shopify Admin by creating a custom app."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 3;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/Direct integration.png",
          title: "Direct integration".tr(context),
          subTitle:
              "Use this option if the platform requires both an API Key and a Secret Key for integration"
                  .tr(context),
          isSelected: _selectedIndex == 4,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 2,
                  filedsNames: ["API Key", "Secret Key"],
                  title: "Direct integration",
                  subTitle:
                      "Use this option if the platform requires both an API Key and a Secret Key for integration."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 4;
            });
          },
        ),
        verticalSpacing(15),
        PlatformContainer(
          image: "assets/images/other.png",
          title: "Other".tr(context),
          subTitle:
              "Use this option if your platform requires only a Token for integration"
                  .tr(context),
          isSelected: _selectedIndex == 5,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlatformDetailScreen(
                  numberOfFileds: 2,
                  filedsNames: ["Token", "Additional info"],
                  title: "Other",
                  subTitle:
                      "Use this option if your platform requires only a Token for integration."
                          .tr(context),
                ),
              ),
            );
            setState(() {
              _selectedIndex = 5;
            });
          },
        ),
        verticalSpacing(50)
      ],
    );
  }

  void buildShowModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              ThirdSignUpSellerForm.productsOrServices.length,
              (index) {
                return ListTile(
                  title: Text(
                    ThirdSignUpSellerForm.productsOrServices[index].tr(context),
                  ),
                  onTap: () {
                    setState(() {
                      productsOrServicesController.text = ThirdSignUpSellerForm
                          .productsOrServices[index]
                          .tr(context);
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
