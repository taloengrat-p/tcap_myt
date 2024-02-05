import 'package:json_annotation/json_annotation.dart';
import 'package:tcap_myt/src/models/api/responses/test_current_price_response/bpi_item.dart';

part 'bpi_object.g.dart';

@JsonSerializable()
class BPIObject {
  final BPIItem? USD;
  final BPIItem? GBP;
  final BPIItem? EUR;

  BPIObject({
    this.USD,
    this.GBP,
    this.EUR,
  });

  factory BPIObject.fromJson(Map<String, dynamic> json) => _$BPIObjectFromJson(json);

  Map<String, dynamic> toJson() => _$BPIObjectToJson(this);
}
