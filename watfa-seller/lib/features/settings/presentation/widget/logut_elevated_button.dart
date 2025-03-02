import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class LogutElevatedButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const LogutElevatedButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsManagers.purple,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.font13WhiteW600Inter(context),
          ),
        ),
      ),
    );
  }
}
