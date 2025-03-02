import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../logic/model/container_model.dart';

class UnSelectedPaymentContainer extends StatelessWidget {
  final ContainerModel model;
  const UnSelectedPaymentContainer({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsManagers.chineseSilver,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: TextStyles.font14Blackw600Roboto(context),
                ),
                verticalSpacing(15),
                Text(
                  model.description,
                  style: TextStyles.font10GrayW600Roboto(context),
                )
              ],
            ),
          ),
          horizontalSpacing(10),
          Icon(
            Icons.arrow_forward_ios,
            color: ColorsManagers.gray,
          ),
        ],
      ),
    );
  }
}
