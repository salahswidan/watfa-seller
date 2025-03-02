import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/countryPicker/data/models/all_country_with_flag.dart';
import '../../features/auth/login/data/model/login_request_body.dart';
import '../../features/auth/sign_up_buyer/data/model/sign_up_buyer_request_body.dart';
import '../../features/auth/sign_up_buyer/data/model/sign_up_buyer_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.register)
  Future<SignUpBuyerResponse> signup(
    @Body() SignUpBuyerRequestBody signUpBuyerRequestBody,
  );

  @POST(ApiConstants.login)
  Future<SignUpBuyerResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @GET(ApiConstants.allCountries)
  Future<AllCountryWithFlagResponese> getAllCountries();
}
