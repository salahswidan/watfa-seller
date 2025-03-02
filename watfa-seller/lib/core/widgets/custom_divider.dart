import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../theme/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.h(context), vertical: 15),
      child: const Divider(
        color: ColorsManagers.philippineSilver,
        thickness: .5,
      ),
    );
  }
}
