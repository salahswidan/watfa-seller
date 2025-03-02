import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/routing/routes.dart';
import 'package:watfa/features/legal/screen/legal_screen.dart';
import '../../../core/theme/colors.dart';
import '../section/custom_user_note.dart';
import '../widgets/step_progress_widget.dart';
import '../widgets/seller_home_app_bar.dart';

class SellerHomeScreen extends StatefulWidget {
  @override
  _SellerHomeScreenState createState() => _SellerHomeScreenState();
}

class _SellerHomeScreenState extends State<SellerHomeScreen> {
  // String imagePath = "assets/images/user_note.png";

  // void _handleLanguageChange() {
  //   setState(() {
  //     imagePath = imagePath == "assets/images/user_note.png"
  //         ? "assets/images/ar3.jpg"
  //         : "assets/images/user_note.png";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManagers.cultured,
      appBar: SellerHomeAppBar(
        isDone: false,
        //  onLanguageChanged: _handleLanguageChange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpacing(52.h(context)),
          FadeInRight(
            delay: const Duration(milliseconds: 300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: StepProgressWidget(
                    steps: [
                      StepData(title: "Business".tr(context), isActive: true),
                      StepData(
                        title: "Legal".tr(context),
                        isActive: false,
                        stepNumber: 2,
                        onTapNav: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LegalScreen()));
                        },
                      ),
                      StepData(
                          title: "Bank".tr(context),
                          isActive: false,
                          stepNumber: 3,
                          onTapNav: () {
                            // Navigator.of(context)
                            //     .pushNamed(Routes.bankInformationScreen);
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          verticalSpacing(41.h(context)),
          //  Center(child: CustomUserMassege())
          FadeInRight(
            delay: const Duration(milliseconds: 150),
            child: Center(
                child: Image.asset(
              "assets/images/user_note.png".tr(context),
              height: 160.h(context),
              width: 362.w(context),
              fit: BoxFit.cover,
            )),
          ),
        ],
      ),
    );
  }
}
