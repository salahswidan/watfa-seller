import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:watfa/core/helpers/extinsions.dart';

import '../../../../../core/theme/colors.dart';

class PinputField extends StatelessWidget {
  const PinputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
      child: Pinput(
        length: 4,
        defaultPinTheme: PinTheme(
          height: 60,
          width: context.screenWidth - 120.w(context),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        focusedPinTheme: PinTheme(
          height: 60,
          width: context.screenWidth - 120.w(context),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: ColorsManagers.purple,
            ),
          ),
        ),
        followingPinTheme: PinTheme(
          height: 60,
          width: context.screenWidth - 120.w(context),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        controller: TextEditingController(),
        onCompleted: (value) {},
      ),
    );
  }
}
