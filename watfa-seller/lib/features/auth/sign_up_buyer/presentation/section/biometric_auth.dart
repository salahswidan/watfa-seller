import 'package:flutter/material.dart';

import '../../../login/presentation/widget/local_auth_container.dart';

class BiometricAuth extends StatelessWidget {
  final void Function() onTapFingerPrint;
  const BiometricAuth({
    super.key,
    required this.onTapFingerPrint,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LocalAuthContainer(
        image: "assets/svgs/figner_print.svg",
        onTap: onTapFingerPrint,
      ),
    );
  }
}
