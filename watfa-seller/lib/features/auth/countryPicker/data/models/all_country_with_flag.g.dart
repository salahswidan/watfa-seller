// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_country_with_flag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCountryWithFlagResponese _$AllCountryWithFlagResponeseFromJson(
        Map<String, dynamic> json) =>
    AllCountryWithFlagResponese(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AllCountryWithFlag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCountryWithFlagResponeseToJson(
        AllCountryWithFlagResponese instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

AllCountryWithFlag _$AllCountryWithFlagFromJson(Map<String, dynamic> json) =>
    AllCountryWithFlag(
      name: json['name'] as String,
      flag: json['flag'] as String,
      code: json['code'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$AllCountryWithFlagToJson(AllCountryWithFlag instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flag': instance.flag,
      'code': instance.code,
      'phone': instance.phone,
    };
