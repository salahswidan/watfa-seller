part of 'login_cubit.dart';

@freezed
class LoginState<T> with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(T data) = LoginSuccess<T>;
  const factory LoginState.error(ApiErrorModel apiErrorModel) = LoginError;
}
