import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tcap_myt/src/models/api/responses/test_current_price_response/test_current_price_response.dart';

part 'app_apis.g.dart';

@RestApi()
abstract class AppApis {
  factory AppApis(Dio dio) = _AppApis;

  @GET('/bpi/currentprice.json')
  Future<TestCurrentcyPriceResponse> getCurrencyPrice();

  @GET('/bpi/error.json')
  Future<TestCurrentcyPriceResponse> getCurrencyPriceExpectError();
}
