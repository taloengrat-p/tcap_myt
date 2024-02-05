// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeObject _$TimeObjectFromJson(Map<String, dynamic> json) => TimeObject(
      updated: json['updated'] as String?,
      updatedISO: json['updatedISO'] as String?,
      updateduk: json['updateduk'] as String?,
    );

Map<String, dynamic> _$TimeObjectToJson(TimeObject instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'updatedISO': instance.updatedISO,
      'updateduk': instance.updateduk,
    };
