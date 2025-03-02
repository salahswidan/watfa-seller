import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class CustomVerifyButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomVerifyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 50,
        width: context.screenWidth,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ColorsManagers.purple,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.font18Purplew400Roboto(context),
          ),
        ),
      ),
    );
  }
}