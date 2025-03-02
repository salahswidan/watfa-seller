import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/spacing.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../widget/notification_item.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Notifications".tr(context),
      ),
      backgroundColor: ColorsManagers.cultured,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => verticalSpacing(20),
              itemBuilder: (context, index) => FadeInRight(
                  delay: Duration(milliseconds: index * 200),
                  child: const NotificationItem()),
            )
          ],
        ),
      ),
    );
  }
}
