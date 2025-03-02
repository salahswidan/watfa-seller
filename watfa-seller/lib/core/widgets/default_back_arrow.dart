import 'package:flutter/material.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/routing/routes.dart';
import '../theme/colors.dart';

class DefaultBackArrow extends StatelessWidget {
  const DefaultBackArrow({
    super.key,
    this.isRoute,
  });
  final bool? isRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          isRoute == true
              ? Navigator.pushNamed(context, Routes.mainScreen)
              : Navigator.pop(context);
        },
        child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManagers.purple,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )));
  }
}
