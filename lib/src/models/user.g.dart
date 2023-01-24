// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      name: json['name'] as String,
      connections:
          _ListData.fromJson(json['connections'] as Map<String, dynamic>),
      accounts: _ListData.fromJson(json['accounts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'mobile': instance.mobile,
      'name': instance.name,
      'connections': instance.connections.toJson(),
      'accounts': instance.accounts.toJson(),
    };

_$__ListData _$$__ListDataFromJson(Map<String, dynamic> json) => _$__ListData(
      count: json['count'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => _Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$__ListDataToJson(_$__ListData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$__Data _$$__DataFromJson(Map<String, dynamic> json) => _$__Data(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$__DataToJson(_$__Data instance) => <String, dynamic>{
      'id': instance.id,
    };
