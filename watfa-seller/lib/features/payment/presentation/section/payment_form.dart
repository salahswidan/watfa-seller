import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/app_regex.dart';
import 'package:watfa/core/helpers/globals.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../auth/countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../auth/countryPicker/ui/country_picker.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});

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
            child: _buildLabel(context, "Your Name"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 150),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isUsernameValid(value)) {
                  return 'Please enter a valid username'.tr(context);
                }
                return null;
              },
              suffixIcon: 'assets/svgs/username_text_field_icon.svg',
              hintText: 'User name'.tr(context),
              controller: TextEditingController(
                  text: CacheServices.instance.getUserModel()?.userName ?? ""),
            ),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 600),
            child: _buildLabel(context, "Phone number"),
          ),
          IntrinsicHeight(
            child: FadeInRight(
              delay: const Duration(milliseconds: 750),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocProvider(
                    create: (context) =>
                        getIt<GetAllCountriesCubit>()..getAllCountries(),
                    child: CountryPicker(
                      countryflag:
                          CacheServices.instance.getUserModel()?.country,
                      controller: TextEditingController(
                          text: CacheServices.instance.getUserModel()?.phone ??
                              ""),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPhoneNumberValid(value)) {
                          return 'Please type a valid phone number'.tr(context);
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 300),
            child: _buildLabel(context, "National ID number"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 450),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid National ID number'.tr(context);
                }
                return null;
              },
              suffixIcon: 'assets/svgs/username_text_field_icon.svg',
              hintText: 'National ID number'.tr(context),
              keyboardType: TextInputType.number,
              controller: TextEditingController(),
            ),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 300),
            child: _buildLabel(context, "email address"),
          ),
          FadeInRight(
            delay: const Duration(milliseconds: 450),
            child: AuthTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email'.tr(context);
                }
                return null;
              },
              suffixIcon: 'assets/svgs/username_text_field_icon.svg',
              hintText: 'Email',
              controller: TextEditingController(
                  text: CacheServices.instance.getUserModel()?.email ?? ""),
            ),
          ),
        ],
      ),
    );
  }
}
