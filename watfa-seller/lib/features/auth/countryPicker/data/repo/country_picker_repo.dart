import '../../../../../core/network/api_error_handler.dart';
import '../../../../../core/network/api_result.dart';
import '../../../../../core/network/api_service.dart';
import '../models/all_country_with_flag.dart';

class CountryPickerRepo{
  final ApiService _apiService;

  CountryPickerRepo(this._apiService);

  Future<ApiResult<AllCountryWithFlagResponese>> getCountryList() async {
    try {
      final response = await _apiService.getAllCountries();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}