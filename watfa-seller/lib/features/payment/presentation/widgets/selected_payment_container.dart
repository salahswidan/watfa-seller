// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../logic/model/container_model.dart';

class SelectedPaymentContainer extends StatelessWidget {
  final ContainerModel model;
  const SelectedPaymentContainer({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManagers.africanViolet, width: 2),
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
            color: ColorsManagers.purple,
          ),
        ],
      ),
    );
  }
}
