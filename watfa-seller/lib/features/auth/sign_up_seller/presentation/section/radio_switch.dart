import 'package:flutter/material.dart';

import '../widget/selected_radio.dart';
import '../widget/un_selected_radio.dart';

class RadioSwitch extends StatelessWidget {
  final bool isSelected;
  const RadioSwitch({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: const SelectedRadio(),
      secondChild: const UnSelectedRadio(),
      crossFadeState: isSelected
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}
