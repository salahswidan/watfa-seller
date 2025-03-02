import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/features/auth/login/logic/cubit/login_cubit.dart';

import '../../../../../core/routing/routes.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is LoginLoading ||
            current is LoginSuccess ||
            current is LoginError,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (loginResponse) {
              setUpSuccessState(context, loginResponse);
            },
            error: (error) {
              setupErrorState(context, error.message!);
            },
          );
        },
        builder: (context, state) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: state is LoginLoading
                  ? Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height *
                            0.1, // Adjust height based on screen height
                        child: Lottie.asset(
                          'assets/lottie/loading_navigate.json',
                        ),
                      ),
                    )
                  : CustomAuthButton(
                      onTap: () {
                        validateThenDoLogin(context);
                      },
                      text: 'Log In'.tr(context),
                    ));
        });
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it'.tr(context),
            ),
          ),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }

  void setUpSuccessState(BuildContext context, signupResponse) async {
    context.pushNamedAndRemoveUntilNamed(Routes.mainScreen);
  }
}
 