import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';
import 'package:watfa/core/helpers/spacing.dart';
import '../../../../core/Local/local_cubit.dart';
import '../../../../core/helpers/globals.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../../logic/models/card_model.dart';
import '../widget/logut_elevated_button.dart';
import '../widget/settings_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Settings".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpacing(30.h(context)),
            Text("General".tr(context),
                style: TextStyles.font16BlackOliverW700Manrope(context)),
            verticalSpacing(30.h(context)),
            ListView.separated(
                separatorBuilder: (context, index) => verticalSpacing(20),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: settingsCardList(context).length,
                itemBuilder: (context, index) {
                  return FadeInRight(
                    delay: Duration(milliseconds: index * 150),
                    child: SettingsCard(
                      cardModel: settingsCardList(context)[index],
                    ),
                  );
                }),
            verticalSpacing(35.h(context)),
            Text("Settings".tr(context),
                style: TextStyles.font16BlackOliverW700Manrope(context)),
            verticalSpacing(30.h(context)),
            FadeInRight(
              delay: Duration(milliseconds: 5 * 150),
              child: SettingsCard(
                cardModel: CardModel(
                  title: 'Language Switch'.tr(context),
                  image: 'assets/images/lanage.png',
                  onTap: () {
                    final currentLocale = LocalCubit.get(context).state
                            is ChangeLocaleState
                        ? (LocalCubit.get(context).state as ChangeLocaleState)
                            .local
                            .languageCode
                        : 'en';
                    String newLocale = currentLocale == 'ar' ? 'en' : 'ar';

                    LocalCubit.get(context).changeLanguage(newLocale);
                  },
                ),
              ),
            ),
            verticalSpacing(50.h(context)),
            FadeInRight(
              delay: Duration(milliseconds: 5 * 150),
              child: GestureDetector(
                onTap: () {
                  showLogOutDialog(context);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/Logout Rounded Left.png",
                      width: 36,
                    ),
                    horizontalSpacing(10),
                    Text("Log Out".tr(context),
                        style:
                            TextStyles.font16BlackOliverW400Manrope(context)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showLogOutDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Are you sure you want to log out?".tr(context),
                    style: TextStyles.font20Blackw500Poppins(context),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpacing(50.h(context)),
                  Row(
                    children: [
                      Expanded(
                        child: LogutElevatedButton(
                          text: "Confirm".tr(context),
                          onTap: () {
                            CacheServices.instance.removeUserModel();
                            context.pop();
                            context.pushNamedAndRemoveUntilNamed(
                                Routes.getStartedScreen);
                          },
                        ),
                      ),
                      horizontalSpacing(30),
                      Expanded(
                        child: LogutElevatedButton(
                          text: "Cancel".tr(context),
                          onTap: () {
                            context.pop();
                          },
                        ),
                      ),
                    ],
                  )
                ]),
          ));
        });
  }
}
