import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:watfa/features/auth/login/data/model/login_request_body.dart';
import 'package:watfa/features/auth/login/data/repo/login_repo.dart';

import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/network/api_error_model.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(
    this._loginRepo,
  ) : super(LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) async {
        await CacheServices.instance.setUserModel(data.userData!);
        emit(LoginState.success(
          data,
        ));
      },
      failure: (apiErrorModel) {
        emit(LoginState.error(apiErrorModel));
      },
    );
  }
}
