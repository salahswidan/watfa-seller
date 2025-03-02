// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_buyer_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpBuyerRequestBody _$SignUpBuyerRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SignUpBuyerRequestBody(
      userName: json['userName'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
      role: json['role'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$SignUpBuyerRequestBodyToJson(
        SignUpBuyerRequestBody instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'country': instance.country,
    };
