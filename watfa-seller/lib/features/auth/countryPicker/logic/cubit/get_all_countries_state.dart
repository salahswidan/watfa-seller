
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_countries_state.freezed.dart';

@freezed
class GetAllCountriesState<T> with _$GetAllCountriesState<T> {
  const factory GetAllCountriesState.initial() = _Initial;
  const factory GetAllCountriesState.loading() = Loading;
  const factory GetAllCountriesState.success(T data) = Success<T>;
  const factory GetAllCountriesState.error({required String error}) = Error;
}
