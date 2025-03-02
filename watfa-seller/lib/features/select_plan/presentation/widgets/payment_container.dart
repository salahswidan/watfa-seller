import 'package:flutter/material.dart';

import 'selected_payment_container.dart';
import 'un_selected_payment_container.dart';

class PaymentContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function() onTap;

  const PaymentContainer(
      {super.key, required this.text, required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: SelectedPaymentContainer(
          onTap: onTap,
          text: text,
        ),
        secondChild: UnSelectedPaymentContainer
        (text: text,
        onTap: onTap,
        ),
        crossFadeState: isSelected
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300));
  }
}
