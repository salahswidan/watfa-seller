
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../core/theme/styles.dart';

class SeeMoreRow extends StatelessWidget {
  final String text;
  const SeeMoreRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyles.font24BlackOliveW700Manrope(context)),
          Text(
            "See More",
            style: TextStyles.font14PurpleW700Manrope(context).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
