import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/network/api_error_model.dart';
part 'sign_up_buyer_state.freezed.dart';

@freezed
class SignUpBuyerState<T> with _$SignUpBuyerState<T> {
  const factory SignUpBuyerState.initial() = _Initial;
  const factory SignUpBuyerState.loading() = SignUpBuyerLoading;
  const factory SignUpBuyerState.success(T data) = SignUpBuyerSuccess<T>;
  const factory SignUpBuyerState.error(ApiErrorModel apiErrorModel) = SignUpBuyerError;
}
