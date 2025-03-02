import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class SelectedPaymentContainer extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const SelectedPaymentContainer(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: ColorsManagers.pinkLace,
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 26.h(context),
                width: 26.w(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: ColorsManagers.purple,
                    size: 22.w(context),
                  ),
                ),
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
