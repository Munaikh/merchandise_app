// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quttaiatGateway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuttaiatGateway _$$_QuttaiatGatewayFromJson(Map<String, dynamic> json) =>
    _$_QuttaiatGateway(
      id: json['id'] as String? ?? '',
      ownerId: json['ownerId'] as String,
      numberOfUser: json['numberOfUser'] as int,
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      companyId: json['companyId'] as String,
      productName: json['productName'] as String? ?? 'Coded Shalleh',
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 400,
      status: json['status'] as String? ?? 'PENDING',
      productImg: json['productImg'] as String? ??
          'https://www.q8seacity.com/uploads/409147.jpeg',
    );

Map<String, dynamic> _$$_QuttaiatGatewayToJson(_$_QuttaiatGateway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'numberOfUser': instance.numberOfUser,
      'accounts': instance.accounts,
      'companyId': instance.companyId,
      'productName': instance.productName,
      'totalPrice': instance.totalPrice,
      'status': instance.status,
      'productImg': instance.productImg,
    };
