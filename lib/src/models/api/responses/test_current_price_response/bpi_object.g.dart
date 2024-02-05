// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bpi_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BPIObject _$BPIObjectFromJson(Map<String, dynamic> json) => BPIObject(
      USD: json['USD'] == null
          ? null
          : BPIItem.fromJson(json['USD'] as Map<String, dynamic>),
      GBP: json['GBP'] == null
          ? null
          : BPIItem.fromJson(json['GBP'] as Map<String, dynamic>),
      EUR: json['EUR'] == null
          ? null
          : BPIItem.fromJson(json['EUR'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BPIObjectToJson(BPIObject instance) => <String, dynamic>{
      'USD': instance.USD,
      'GBP': instance.GBP,
      'EUR': instance.EUR,
    };
