// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Institution _$$_InstitutionFromJson(Map<String, dynamic> json) =>
    _$_Institution(
      id: json['id'] as String,
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      country: json['country'] as String,
      logo: Logo.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InstitutionToJson(_$_Institution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'country': instance.country,
      'logo': instance.logo.toJson(),
    };

_$_Logo _$$_LogoFromJson(Map<String, dynamic> json) => _$_Logo(
      type: json['type'] as String,
      links: _Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogoToJson(_$_Logo instance) => <String, dynamic>{
      'type': instance.type,
      'links': instance.links.toJson(),
    };

_$__Links _$$__LinksFromJson(Map<String, dynamic> json) => _$__Links(
      square: json['square'] as String,
      full: json['full'] as String,
    );

Map<String, dynamic> _$$__LinksToJson(_$__Links instance) => <String, dynamic>{
      'square': instance.square,
      'full': instance.full,
    };
