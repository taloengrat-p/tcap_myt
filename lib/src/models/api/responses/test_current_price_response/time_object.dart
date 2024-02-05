import 'package:json_annotation/json_annotation.dart';

part 'time_object.g.dart';

@JsonSerializable()
class TimeObject {
  final String? updated;
  final String? updatedISO;
  final String? updateduk;

  TimeObject({
    this.updated,
    this.updatedISO,
    this.updateduk,
  });

  factory TimeObject.fromJson(Map<String, dynamic> json) => _$TimeObjectFromJson(json);

  Map<String, dynamic> toJson() => _$TimeObjectToJson(this);
}
