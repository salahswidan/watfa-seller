import 'package:flutter/material.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/styles.dart';
import 'package:watfa/core/widgets/auth_text_form_field.dart';

class FirstSignUpSellerForm extends StatelessWidget {
  const FirstSignUpSellerForm({super.key});

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

  Widget _buildTextField({
    required BuildContext context,
    required String validatorText,
    required TextEditingController controller,
    String? hintText,
    bool isPassword = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return AuthTextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText.tr(context);
        }
        return null;
      },
      hintText: hintText?.tr(context) ?? '',
      controller: controller,
      isPassword: isPassword,
      keyboardType: keyboardType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final companyController = TextEditingController();
    final userController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Directionality(
      textDirection: _isRtl(context) ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Take your company to the next level".tr(context),
              textAlign: TextAlign.center,
              style: TextStyles.font24Blackw700Roboto(context),
            ),
          ),
          verticalSpacing(12.h(context)),
          Text(
            "Let us start by getting to know one another better.".tr(context),
            style: TextStyles.font14DarkSilverw400Roboto(context),
            textAlign: TextAlign.center,
          ),
          verticalSpacing(20),
          _buildLabel(context, "Company name"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your company name",
            controller: companyController,
            hintText: "Watfa",
          ),
          verticalSpacing(16.h(context)),
          _buildLabel(context, "User name"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your username",
            controller: userController,
            hintText: "watfa",
          ),
          verticalSpacing(16.h(context)),
          _buildLabel(context, "Email address"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your email",
            controller: emailController,
            hintText: "example@domain.com",
          ),
          verticalSpacing(16.h(context)),
          _buildLabel(context, "Phone number"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your phone number",
            controller: phoneController,
            hintText: "0122067667",
            keyboardType: TextInputType.phone,
          ),
          verticalSpacing(16.h(context)),
          _buildLabel(context, "Password"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your password",
            controller: passwordController,
            isPassword: true,
            hintText: "Password",
          ),
          verticalSpacing(16.h(context)),
          _buildLabel(context, "Confirm Password"),
          _buildTextField(
            context: context,
            validatorText: "Please enter your password",
            controller: confirmPasswordController,
            isPassword: true,
            hintText: "Confirm Password",
          ),
          verticalSpacing(60.h(context)),
        ],
      ),
    );
  }
}
