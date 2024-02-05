// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_current_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestCurrentcyPriceResponse _$TestCurrentcyPriceResponseFromJson(
        Map<String, dynamic> json) =>
    TestCurrentcyPriceResponse(
      time: json['time'] == null
          ? null
          : TimeObject.fromJson(json['time'] as Map<String, dynamic>),
      disclaimer: json['disclaimer'] as String?,
      chartName: json['chartName'] as String?,
      bpi: json['bpi'] == null
          ? null
          : BPIObject.fromJson(json['bpi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TestCurrentcyPriceResponseToJson(
        TestCurrentcyPriceResponse instance) =>
    <String, dynamic>{
      'time': instance.time,
      'disclaimer': instance.disclaimer,
      'chartName': instance.chartName,
      'bpi': instance.bpi,
    };
