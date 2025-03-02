import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/theme/colors.dart';
import 'package:watfa/core/theme/styles.dart';

class GetStartedButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final bool? isSeller;
  final bool? isShop;
  final bool? isComplated;
  const GetStartedButton(
      {super.key,
      this.isComplated,
      required this.onTap,
      required this.text,
      this.isSeller,
      this.isShop});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 50,
        width: isSeller == true
            ? 311
            : isShop == true
                ? 257
                : context.screenWidth,
        decoration: BoxDecoration(
          color: isComplated == true
              ? ColorsManagers.blackOlive
              : ColorsManagers.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.font20WhiteW600Poppins(context),
          ),
        ),
      ),
    );
  }
}
