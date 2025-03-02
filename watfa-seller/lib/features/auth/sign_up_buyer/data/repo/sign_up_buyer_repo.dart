import 'package:watfa/core/network/api_result.dart';
import 'package:watfa/features/auth/sign_up_buyer/data/model/sign_up_buyer_request_body.dart';
import 'package:watfa/features/auth/sign_up_buyer/data/model/sign_up_buyer_response.dart';

import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_service.dart';

class SignUpBuyerRepo {
  final ApiService _apiService;

  SignUpBuyerRepo(this._apiService);

  Future<ApiResult<SignUpBuyerResponse>> signUpBuyer(
      SignUpBuyerRequestBody signUpBuyerRequestBody) async {
    try {
      final response = await _apiService.signup(signUpBuyerRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
