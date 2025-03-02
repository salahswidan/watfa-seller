import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/app_regex.dart';
import 'package:watfa/features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_cubit.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../../countryPicker/logic/cubit/get_all_countries_cubit.dart';
import '../../../countryPicker/ui/country_picker.dart';
import 'password_listener.dart';

class SignUpBuyerForm extends StatefulWidget {
  const SignUpBuyerForm({super.key});

  @override
  State<SignUpBuyerForm> createState() => _SignUpBuyerFormState();
}

class _SignUpBuyerFormState extends State<SignUpBuyerForm> {
  bool hasAtLeast8Characters = false;
  bool hasAtLeast1UpperCase = false;
  bool hasAtLeast1NumberOrSymbol = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<SignUpBuyerCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasAtLeast8Characters = AppRegex.hasMinLength(passwordController.text);
        hasAtLeast1UpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasAtLeast1NumberOrSymbol =
            AppRegex.hasNumberOrSpecialCharacter(passwordController.text);
      });
    });
  }

  bool _isRtl(BuildContext context) {
    return Directionality.of(context) == TextDirection.rtl;
  }

  Widget _buildLabel(BuildContext context, String text) {
    return Container(
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
      child: Form(
        key: context.read<SignUpBuyerCubit>().formKey,
        child: Column(
          children: [
            _buildLabel(context, "User name"),
            AuthTextFormField(
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
              controller: context.read<SignUpBuyerCubit>().userNameController,
            ),
            verticalSpacing(16),
            _buildLabel(context, "Email"),
            AuthTextFormField(
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email address'.tr(context);
                }
                return null;
              },
              suffixIcon: 'assets/svgs/username_text_field_icon.svg',
              hintText: 'Email'.tr(context),
              controller: context.read<SignUpBuyerCubit>().emailController,
            ),
            verticalSpacing(16),
            _buildLabel(context, "Phone number"),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocProvider(
                    create: (context) =>
                        getIt<GetAllCountriesCubit>()..getAllCountries(),
                    child: CountryPicker(
                      controller: context
                          .read<SignUpBuyerCubit>()
                          .phoneNumberController,
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
            verticalSpacing(16),
            _buildLabel(context, "Password"),
            AuthTextFormField(
              isPassword: true,
              hintText: 'Password'.tr(context),
              controller: passwordController,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !hasAtLeast8Characters ||
                    !hasAtLeast1UpperCase ||
                    !hasAtLeast1NumberOrSymbol) {
                  return 'Please enter a valid password'.tr(context);
                }
              },
            ),
            verticalSpacing(16),
            _buildLabel(context, "Confirm Password"),
            AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid confirm password'.tr(context);
                }
                if (value != passwordController.text) {
                  return 'Passwords do not match'.tr(context);
                }
                return null;
              },
              isPassword: true,
              hintText: 'Confirm Password'.tr(context),
              controller:
                  context.read<SignUpBuyerCubit>().confirmPasswordController,
            ),
            verticalSpacing(10),
            PasswordListener(
              hasAtLeast8Characters: hasAtLeast8Characters,
              hasAtLeast1UpperCase: hasAtLeast1UpperCase,
              hasAtLeast1NumberOrSymbol: hasAtLeast1NumberOrSymbol,
            ),
          ],
        ),
      ),
    );
  }
}
