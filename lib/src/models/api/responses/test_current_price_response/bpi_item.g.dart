// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bpi_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPIItem _$BPIItemFromJson(Map<String, dynamic> json) => BPIItem(
      code: json['code'] as String?,
      symbol: json['symbol'] as String?,
      rate: json['rate'] as String?,
      description: json['description'] as String?,
      rate_float: (json['rate_float'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BPIItemToJson(BPIItem instance) => <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'rate': instance.rate,
      'description': instance.description,
      'rate_float': instance.rate_float,
    };
