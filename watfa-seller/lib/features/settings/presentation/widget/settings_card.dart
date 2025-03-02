import 'package:flutter/material.dart';
import 'package:watfa/features/settings/logic/models/card_model.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class SettingsCard extends StatelessWidget {
  final CardModel cardModel;
  const SettingsCard({
    super.key,
    required this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardModel.onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 24,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                cardModel.image,
                width: 24,
              ),
              horizontalSpacing(16),
              Text(cardModel.title,
                  style: TextStyles.font16BlackOliverW400Manrope(context)),
              Expanded(child: SizedBox()),
              Icon(
                Icons.arrow_forward_ios,
                color: ColorsManagers.blackOlive,
              )
            ],
          ),
        ),
      ),
    );
  }
}
