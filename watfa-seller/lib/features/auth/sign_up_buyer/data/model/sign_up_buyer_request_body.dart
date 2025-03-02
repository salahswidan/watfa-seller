import 'package:json_annotation/json_annotation.dart';

part 'sign_up_buyer_request_body.g.dart';

@JsonSerializable()
class SignUpBuyerRequestBody {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;
  final String role;
  final String phoneNumber;
  final String country;

  SignUpBuyerRequestBody(
      {required this.userName,
      required this.password,
      required this.confirmPassword,
      required this.role,
      required this.phoneNumber,
      required this.email,
      required this.country});

  Map<String, dynamic> toJson() => _$SignUpBuyerRequestBodyToJson(this);
}
