import 'package:json_annotation/json_annotation.dart';

part 'sign_up_buyer_response.g.dart';

@JsonSerializable()
class SignUpBuyerResponse {
  final bool? success;
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;

  SignUpBuyerResponse(
      {required this.success, required this.message, required this.userData});

  factory SignUpBuyerResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpBuyerResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? email;
  final String? role;
  final String? userName;
  final String? token;
  final String? phone;
  final String? country;

  UserData(
      {required this.email,
      required this.role,
      required this.userName,
      required this.token,
      required this.phone,
      required this.country});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
