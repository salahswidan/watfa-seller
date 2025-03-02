import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:watfa/core/Local/AppLocalizations.dart';
import 'package:watfa/core/helpers/extinsions.dart';
import 'package:watfa/features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_cubit.dart';
import 'package:watfa/features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_state.dart';

import '../../../../../core/routing/routes.dart';
import '../../../get_started/presentation/widgets/custom_auth_button.dart';

class SignUpBuyerBlocListener extends StatelessWidget {
  const SignUpBuyerBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBuyerCubit, SignUpBuyerState>(
        listenWhen: (previous, current) =>
            current is SignUpBuyerLoading ||
            current is SignUpBuyerSuccess ||
            current is SignUpBuyerError,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (signupResponse) {
              setUpSuccessState(context, signupResponse);
            },
            error: (error) {
              setupErrorState(context, error.message!);
            },
          );
        },
        builder: (context, state) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: state is SignUpBuyerLoading
                  ? Center(
                      child: Lottie.asset(
                        'assets/lottie/loading_navigate.json',
                      ),
                    )
                  : CustomAuthButton(
                      onTap: () {
                        validateThenDoSignup(context);
                      },
                      text: 'Sign Up'.tr(context),
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

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpBuyerCubit>().formKey.currentState!.validate()) {
      context.read<SignUpBuyerCubit>().emitSignUpBuyerState();
    }
  }

  void setUpSuccessState(BuildContext context, signupResponse) async {
    context.pushNamedAndRemoveUntilNamed(Routes.homeScreen);
  }
}
