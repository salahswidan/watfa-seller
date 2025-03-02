// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_buyer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpBuyerResponse _$SignUpBuyerResponseFromJson(Map<String, dynamic> json) =>
    SignUpBuyerResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpBuyerResponseToJson(
        SignUpBuyerResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      email: json['email'] as String?,
      role: json['role'] as String?,
      userName: json['userName'] as String?,
      token: json['token'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'email': instance.email,
      'role': instance.role,
      'userName': instance.userName,
      'token': instance.token,
      'phone': instance.phone,
      'country': instance.country,
    };
