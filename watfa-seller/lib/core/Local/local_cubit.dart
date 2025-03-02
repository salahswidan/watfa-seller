import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../helpers/shared_pref_helper.dart';
part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit() : super(LocalInitial());

  static LocalCubit get(context) => BlocProvider.of(context);

  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode = CacheServices.instance.getLangCode();
    print(cachedLanguageCode);
    emit(ChangeLocaleState(local: Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
    await CacheServices.instance.setLangCode(languageCode);
    emit(ChangeLocaleState(local: Locale(languageCode)));
  }
}
