// ignore_for_file: library_private_types_in_public_api

import 'package:freezed_annotation/freezed_annotation.dart';
part 'institution.freezed.dart';
part 'institution.g.dart';

@freezed
class Institution with _$Institution {
  const factory Institution({
    required String id,
    required String name,
    required String shortName,
    required String country,
    required Logo logo,
  }) = _Institution;

  factory Institution.fromJson(Map<String, dynamic> json) =>
      _$InstitutionFromJson(json);
}

@freezed
class Logo with _$Logo {
  const factory Logo({
    required String type,
    required _Links links,
  }) = _Logo;
  factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
}

@freezed
class _Links with _$_Links {
  const factory _Links({
    required String square,
    required String full,
  }) = __Links;
  factory _Links.fromJson(Map<String, dynamic> json) => _$_LinksFromJson(json);
}
