import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watfa/core/helpers/constants.dart';
import 'package:watfa/features/auth/sign_up_buyer/data/model/sign_up_buyer_request_body.dart';

import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../data/repo/sign_up_buyer_repo.dart';
import 'sign_up_buyer_state.dart';

class SignUpBuyerCubit extends Cubit<SignUpBuyerState> {
  final SignUpBuyerRepo _signUpBuyerRepo;
  SignUpBuyerCubit(
    this._signUpBuyerRepo,
  ) : super(SignUpBuyerState.initial());

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpBuyerState() async {
    emit(const SignUpBuyerState.loading());
    final response = await _signUpBuyerRepo.signUpBuyer(
      SignUpBuyerRequestBody(
        userName: userNameController.text,
        email: emailController.text,
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        role: 'buyer',
        country: Constants.selectedCountryname,
      ),
    );
    response.when(
      success: (data)async {
        await CacheServices.instance.setUserModel(data.userData!);
        emit(SignUpBuyerState.success(data));
      },
      failure: (apiErrorModel) {
        emit(SignUpBuyerState.error(apiErrorModel));
      },
    );
  }
}
