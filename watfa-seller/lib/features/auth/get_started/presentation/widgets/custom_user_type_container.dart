import 'package:flutter/material.dart';
import 'package:watfa/features/auth/get_started/data/model/get_started_model.dart';

import 'active_user_type_container.dart';
import 'in_active_user_type_container.dart';

class CustomUserTypeContainer extends StatelessWidget {
  final bool isActive;
  final GetStartedModel getStartedModel;
  const CustomUserTypeContainer({
    super.key,
    required this.isActive,
    required this.getStartedModel,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveUserTypeContainer(
        getStartedModel: getStartedModel,
      ),
      secondChild: InActiveUserTypeContainer(getStartedModel: getStartedModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}
