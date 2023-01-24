// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as String,
      accountHolder: json['accountHolder'] as String?,
      accountNo: json['accountNo'] as String,
      availableFunds: json['availableFunds'] as String,
      balance: json['balance'] as String,
      accountClass:
          _AccountClass.fromJson(json['class'] as Map<String, dynamic>),
      currency: json['currency'] as String,
      institution: json['institution'] as String,
      name: json['name'] as String,
      status: $enumDecode(_$AccountStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountHolder': instance.accountHolder,
      'accountNo': instance.accountNo,
      'availableFunds': instance.availableFunds,
      'balance': instance.balance,
      'class': instance.accountClass.toJson(),
      'currency': instance.currency,
      'institution': instance.institution,
      'name': instance.name,
      'status': _$AccountStatusEnumMap[instance.status]!,
    };

const _$AccountStatusEnumMap = {
  AccountStatus.available: 'available',
  AccountStatus.unavailable: 'unavailable',
};

_$__AccountClass _$$__AccountClassFromJson(Map<String, dynamic> json) =>
    _$__AccountClass(
      type: json['type'] as String,
      product: json['product'] as String,
    );

Map<String, dynamic> _$$__AccountClassToJson(_$__AccountClass instance) =>
    <String, dynamic>{
      'type': instance.type,
      'product': instance.product,
    };
