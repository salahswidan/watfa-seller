import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/countryPicker/data/repo/country_picker_repo.dart';
import '../../features/auth/countryPicker/logic/cubit/get_all_countries_cubit.dart';

import '../../features/auth/login/data/repo/login_repo.dart';
import '../../features/auth/login/logic/cubit/login_cubit.dart';
import '../../features/auth/sign_up_buyer/data/repo/sign_up_buyer_repo.dart';
import '../../features/auth/sign_up_buyer/logic/cubit/sign_up_buyer_cubit.dart';
import '../network/api_service.dart';
import '../network/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIT() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Country Picker
  getIt.registerLazySingleton<CountryPickerRepo>(
      () => CountryPickerRepo(getIt()));
  getIt.registerFactory<GetAllCountriesCubit>(
      () => GetAllCountriesCubit(getIt()));

  // SignUpBuyer
  getIt.registerLazySingleton<SignUpBuyerRepo>(() => SignUpBuyerRepo(getIt()));
  getIt.registerFactory<SignUpBuyerCubit>(() => SignUpBuyerCubit(getIt()));

  // login
   getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
