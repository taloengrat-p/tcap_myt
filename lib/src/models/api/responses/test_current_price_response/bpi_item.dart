import 'package:json_annotation/json_annotation.dart';
import 'package:tcap_myt/src/data/services/app_client.dart';

part 'bpi_item.g.dart';

@JsonSerializable()
class BPIItem {
  final String? code;
  final String? symbol;
  final String? rate;
  final String? description;
  final double? rate_float;

  BPIItem({
    required this.code,
    required this.symbol,
    required this.rate,
    required this.description,
    required this.rate_float,
  });

  factory BPIItem.fromJson(Map<String, dynamic> json) => _$BPIItemFromJson(json);

  Map<String, dynamic> toJson() => _$BPIItemToJson(this);
}
