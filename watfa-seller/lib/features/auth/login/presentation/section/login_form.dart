import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/auth_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
      child: Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            _buildLabel(context, "email address"),
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
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpacing(16),
            _buildLabel(context, "Password"),
            AuthTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password'.tr(context);
                }
                return null;
              },
              isPassword: true,
              hintText: 'Password'.tr(context),
              controller: context.read<LoginCubit>().passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
