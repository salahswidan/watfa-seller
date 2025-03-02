import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../widget/radio_list_tile.dart';

class SecondSignUpSellerForm extends StatelessWidget {
  const SecondSignUpSellerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("complete your Watfa profile".tr(context),
                textAlign: TextAlign.center,
                style: TextStyles.font20PhilippineGrayw500Roboto(context)),
          ),
        ),
        verticalSpacing(40.h(context)),
        Text(
          "Countries of business operations".tr(context),
          style: TextStyles.font14RaisinBlackw500Poppins(context),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your country'.tr(context);
            }
            return null;
          },
          hintText: 'egypt'.tr(context),
          controller: TextEditingController(),
        ),
        verticalSpacing(35.h(context)),
        Text(
          "Business type".tr(context),
          style: TextStyles.font14Blackw500Poppins(context),
        ),
        verticalSpacing(15.h(context)),
        RadioListTileForm(
          title: "Registered business".tr(context),
          subtitle:
              "Your business is registered as a commercial entity under the relevant authority in the country you are based in."
                  .tr(context),
        ),
        verticalSpacing(15.h(context)),
        RadioListTileForm(
          title: "Freelancer".tr(context),
          subtitle:
              "You are a self-employed individual working on a sole trader or freelancer license issued by the relevant authority in the country you are based in."
                  .tr(context),
        ),
        verticalSpacing(35.h(context)),
        Text(
          "In what ways do you offer your products or services to your customers?"
              .tr(context),
          style: TextStyles.font14Blackw500Poppins(context),
        ),
        verticalSpacing(15.h(context)),
        RadioListTileForm(
          title: "In-store".tr(context),
          subtitle: "Physical location sales".tr(context),
        ),
        verticalSpacing(15.h(context)),
        RadioListTileForm(
          title: "Online".tr(context),
          subtitle: "E-commerce sales".tr(context),
        ),
        verticalSpacing(40.h(context)),
        Text(
          "Store link".tr(context),
          style: TextStyles.font14RaisinBlackw500Poppins(context),
        ),
        AuthTextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter your store link'.tr(context);
            }
            return null;
          },
          hintText: 'https://watfa.com'.tr(context),
          controller: TextEditingController(),
        ),
        verticalSpacing(40.h(context))
      ],
    );
  }
}
