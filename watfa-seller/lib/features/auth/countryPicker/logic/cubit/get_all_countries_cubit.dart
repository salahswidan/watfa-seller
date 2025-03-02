import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/country_picker_repo.dart';
import 'get_all_countries_state.dart';

class GetAllCountriesCubit extends Cubit<GetAllCountriesState> {
  GetAllCountriesCubit(
    this._countryRepository,
  ) : super(const GetAllCountriesState.initial());

  final CountryPickerRepo _countryRepository;

  void getAllCountries() async {
    emit(const GetAllCountriesState.loading());
    final countries = await _countryRepository.getCountryList();
    countries.when(
      success: (data) {
        log(data.data.toString());
        emit(GetAllCountriesState.success(data));
      },
      failure: (error) {
        emit(GetAllCountriesState.error(error: error.message ?? ''));
      },
    );
  }
}
