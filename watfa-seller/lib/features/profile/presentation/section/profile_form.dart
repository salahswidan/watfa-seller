import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/app_regex.dart';
import 'package:watfa/core/helpers/shared_pref_helper.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../auth/countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../auth/countryPicker/ui/country_picker.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  bool _isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

  @override
  Widget build(BuildContext context) {
    final userModel = CacheServices.instance.getUserModel();

    Widget _buildLabel(String text) {
      return Container(
        alignment:
            _isRtl(context) ? Alignment.centerRight : Alignment.centerLeft,
        child: Text(
          text.tr(context),
          style: TextStyles.font14Jetw500Poppins(context),
        ),
      );
    }

    Widget _buildAnimatedTextField({
      required String label,
      required String hintText,
      required TextEditingController controller,
      required String? Function(String?) validator,
      required String iconPath,
      Duration delay = Duration.zero,
    }) {
      return FadeInRight(
        delay: delay,
        child: Column(
          crossAxisAlignment: _isRtl(context)
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            _buildLabel(label),
            AuthTextFormField(
              validator: validator,
              suffixIcon: iconPath,
              hintText: hintText.tr(context),
              controller: controller,
            ),
          ],
        ),
      );
    }

    return Directionality(
      textDirection: _isRtl(context) ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          _buildAnimatedTextField(
            label: "User name",
            hintText: "User name",
            controller: TextEditingController(text: userModel?.userName ?? ""),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isUsernameValid(value)) {
                return 'Please enter a valid username'.tr(context);
              }
              return null;
            },
            iconPath: 'assets/svgs/username_text_field_icon.svg',
            delay: const Duration(milliseconds: 150),
          ),
          verticalSpacing(16),
          _buildAnimatedTextField(
            label: "Email address",
            hintText: "Email",
            controller: TextEditingController(text: userModel?.email ?? ""),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email address'.tr(context);
              }
              return null;
            },
            iconPath: 'assets/svgs/username_text_field_icon.svg',
            delay: const Duration(milliseconds: 450),
          ),
          verticalSpacing(16),
          FadeInRight(
            delay: const Duration(milliseconds: 600),
            child: _buildLabel("Mobile Number"),
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
                      countryflag: userModel?.country,
                      controller:
                          TextEditingController(text: userModel?.phone ?? ""),
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
        ],
      ),
    );
  }
}
