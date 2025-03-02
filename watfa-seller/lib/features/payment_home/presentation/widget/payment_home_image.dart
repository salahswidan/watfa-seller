import 'dart:async';

import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';

class PaymentHomeImage extends StatefulWidget {
  const PaymentHomeImage({
    super.key,
  });

  @override
  State<PaymentHomeImage> createState() => _PaymentHomeImageState();
}

class _PaymentHomeImageState extends State<PaymentHomeImage> {
  bool isOute = false;

  @override
  void initState() {
    Timer(const Duration(milliseconds: 300), () {
      setState(() {
        isOute = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 300),
      scale: isOute ? 1 : 0,
      child: Image.asset(
        "assets/images/payment_home.png",
        height: 297.h(context),
      ),
    );
  }
}
