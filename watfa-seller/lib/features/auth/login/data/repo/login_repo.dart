import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_result.dart';
import '../../../../../core/network/api_service.dart';
import '../../../sign_up_buyer/data/model/sign_up_buyer_response.dart';
import '../model/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;

  const LoginRepo(this._apiService);

  Future<ApiResult<SignUpBuyerResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
