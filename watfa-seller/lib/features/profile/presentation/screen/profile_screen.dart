import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/default_app_bar.dart';
import '../../../auth/get_started/presentation/widgets/get_started_button.dart';
import '../section/profile_form.dart';
import '../widgets/user_profile_image.dart';

class ProfileScreen extends StatelessWidget {
  final bool? hasAppBar;
  const ProfileScreen({super.key, this.hasAppBar = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hasAppBar! ? DefaultAppBar() : null,
      backgroundColor: ColorsManagers.cultured,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileImage(),
              verticalSpacing(50.h(context)),
              ProfileForm(),
              verticalSpacing(70.h(context)),
              GetStartedButton(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.mainScreen);
                },
                text: 'Save Changes'.tr(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
