// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:tcap_myt/src/models/api/responses/test_current_price_response/bpi_object.dart';

import 'package:tcap_myt/src/models/api/responses/test_current_price_response/time_object.dart';

part 'test_current_price_response.g.dart';

@JsonSerializable()
class TestCurrentcyPriceResponse {
  final TimeObject? time;
  final String? disclaimer;
  final String? chartName;
  final BPIObject? bpi;

  const TestCurrentcyPriceResponse({
    this.time,
    this.disclaimer,
    this.chartName,
    this.bpi,
  });

  factory TestCurrentcyPriceResponse.fromJson(Map<String, dynamic> json) => _$TestCurrentcyPriceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TestCurrentcyPriceResponseToJson(this);

  @override
  String toString() {
    return 'TestCurrentcyPriceResponse(time: $time, disclaimer: $disclaimer, chartName: $chartName, bpi: $bpi)';
  }
}
