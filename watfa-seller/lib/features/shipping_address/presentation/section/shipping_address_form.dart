import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';

class ShippingAddressForm extends StatelessWidget {
  const ShippingAddressForm({super.key});

  bool _isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

  Widget _buildLabel(BuildContext context, String text) {
    return Align(
      alignment: _isRtl(context) ? Alignment.centerRight : Alignment.centerLeft,
      child: Text(
        text.tr(context),
        style: TextStyles.font14Jetw500Poppins(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _isRtl(context) ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          FadeInRight(
            child: _buildLabel(context, "Country"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 150),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid country'.tr(context);
                }
                return null;
              },
              hintText: 'Country'.tr(context),
              controller: TextEditingController(),
            ),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 600),
            child: _buildLabel(context, "Address"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 450),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid address'.tr(context);
                }
                return null;
              },
              hintText: 'Address'.tr(context),
              controller: TextEditingController(),
            ),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 300),
            child: _buildLabel(context, "Town/city"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 450),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid town/city'.tr(context);
                }
                return null;
              },
              hintText: 'Town/city'.tr(context),
              controller: TextEditingController(),
            ),
          ),
        ],
      ),
    );
  }
}
