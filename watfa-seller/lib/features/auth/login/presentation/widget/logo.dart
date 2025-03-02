import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      child: Image.asset(
        'assets/images/Watfa_logo 4.png',
        width: 170.w(context),
        height: 30.h(context),
        fit: BoxFit.contain,
      ),
    );
  }
}