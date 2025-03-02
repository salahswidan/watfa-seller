import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class UnSelectedPaymentContainer extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const UnSelectedPaymentContainer(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: ColorsManagers.davysGray.withOpacity(.08),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //!
                height: 26.h(context),
                width: 26.w(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    )),
              ),
              Text(
                text,
                style: TextStyles.font14BlackW400Ralway(context),
              ),
              Container()
            ],
          )),
    );
  }
}
