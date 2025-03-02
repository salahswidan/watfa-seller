import 'package:json_annotation/json_annotation.dart';

part 'all_country_with_flag.g.dart';

@JsonSerializable()
class AllCountryWithFlagResponese {
  final String message;
  final List<AllCountryWithFlag> data;

  AllCountryWithFlagResponese({
    required this.message,
    required this.data,
  });

  factory AllCountryWithFlagResponese.fromJson(Map<String, dynamic> json) =>
      _$AllCountryWithFlagResponeseFromJson(json);

  Map<String, dynamic> toJson() => _$AllCountryWithFlagResponeseToJson(this);
}

@JsonSerializable()
class AllCountryWithFlag {
  final String name;
  final String flag;
  final String code;
  final String phone;

  AllCountryWithFlag({
    required this.name,
    required this.flag,
    required this.code,
    required this.phone,
  });

  factory AllCountryWithFlag.fromJson(Map<String, dynamic> json) =>
      _$AllCountryWithFlagFromJson(json);

  Map<String, dynamic> toJson() => _$AllCountryWithFlagToJson(this);
}
