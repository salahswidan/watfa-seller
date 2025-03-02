import 'package:flutter/material.dart';
import 'package:watfa/features/payment/presentation/widgets/un_selected_payment_container.dart';

import '../../logic/model/container_model.dart';
import 'selected_payment_container.dart';

class PaymentContainer extends StatelessWidget {
  final ContainerModel model;
  final bool isSelected;
  const PaymentContainer(
      {super.key, required this.model, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: SelectedPaymentContainer(
          model: model,
        ),
        secondChild: UnSelectedPaymentContainer(
          model: model,
        ),
        crossFadeState: isSelected
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 300));
  }
}
