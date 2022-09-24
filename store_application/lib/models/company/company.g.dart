// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      id: json['id'] as String? ?? '',
      balance: (json['balance'] as num).toDouble(),
      logo: json['logo'] as String,
      ownerId: json['ownerId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'logo': instance.logo,
      'ownerId': instance.ownerId,
      'name': instance.name,
    };
