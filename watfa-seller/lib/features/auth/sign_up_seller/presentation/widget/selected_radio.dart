import 'package:flutter/material.dart';

import '../../../../../core/theme/colors.dart';

class SelectedRadio extends StatelessWidget {
  const SelectedRadio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: ColorsManagers.purple,
          )),
      child: Center(
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorsManagers.purple,
              ),
              color: ColorsManagers.purple),
        ),
      ),
    );
  }
}
