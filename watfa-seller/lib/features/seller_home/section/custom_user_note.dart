import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import '../../../core/theme/colors.dart';
import '../../../core/widgets/user_image.dart';

class CustomUserMassege extends StatelessWidget {
  const CustomUserMassege({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double responsiveFontSize = MediaQuery.of(context).size.width * 0.035;
    // double responsiveContainerHeight = MediaQuery.of(context).size.height * 0.2;

    return FadeInRight(
      delay: const Duration(milliseconds: 300),
      child: Container(
        width: 362.w(context),
        height: 160.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsManagers.pink,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "The Request is Process".tr(context),
                    style: TextStyles.font18BlackW500Manropes(context),
                  ),
                  horizontalSpacing(130.w(context)),
                  UserImage(
                    isUploaded: true,
                  ),
                ],
              ),
              verticalSpacing(18.h(context)),
              Flexible(
                child: Text(
                  "Your Request Is Currently Awaiting Finalization.We kindly Seek Your Cooperation In Furnishing Your Legal And Bank Information For The Purpose Of Verification."
                      .tr(context),
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontFamily: "Arabic",
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
