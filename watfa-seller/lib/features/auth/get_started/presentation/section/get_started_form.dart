import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../data/model/get_started_model.dart';
import '../widgets/custom_user_type_container.dart';
import '../widgets/get_started_button.dart';

class GetStartedForm extends StatefulWidget {
  const GetStartedForm({
    super.key,
  });

  @override
  State<GetStartedForm> createState() => _GetStartedFormState();
}

class _GetStartedFormState extends State<GetStartedForm> {
  int _selectedUserType = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomUserTypeContainer(
          isActive: _selectedUserType == 1,
          getStartedModel: GetStartedModel(
            title: 'For Business'.tr(context),
            icon: 'assets/svgs/seller_icon.svg',
          ),
        ),
        Flexible(child: verticalSpacing(45)),
        Flexible(flex: 2, child: verticalSpacing(800)),
        GetStartedButton(
          onTap: () {
            Future.delayed(Duration.zero, () async {
              await CacheServices.instance.setUserType(_selectedUserType == 1);
            });

            context.pushNamed(Routes.loginScreen);
          },
          text: 'Proceed'.tr(context),
        )
      ],
    );
  }
}
