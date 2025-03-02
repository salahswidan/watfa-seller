import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/styles.dart';
import '../widget/app_bar_action_circle.dart';
import '../widget/user_image.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.profileScreen);
            },
            child: UserImage()),
        horizontalSpacing(5),
        Expanded(
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
                textAlign: TextAlign.start,
                "Good Morning,".tr(context) +
                    (CacheServices.instance.getUserModel()?.userName ?? ""),
                style: TextStyles.font20RaisinBlackw500Inter(context)),
          ),
        ),
        horizontalSpacing(10),
        AppBarActionCircle(
          icon: 'assets/svgs/notification.svg',
          onTap: () {
            context.pushNamed(Routes.notificationsScreen);
          },
        ),
        horizontalSpacing(5),
        AppBarActionCircle(
          icon: 'assets/svgs/setting.svg',
          onTap: () {
            context.pushNamed(Routes.settingsScreen);
          },
        ),
      ]),
    );
  }
}
