import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/styles.dart';

import '../../../../../core/theme/colors.dart';

class CustomAuthButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const CustomAuthButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 58,
          width: context.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorsManagers.purple,
                  ColorsManagers.richLavender,
                ]),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyles.font20WhiteW600Roboto(context),
            ),
          )),
    );
  }
}
