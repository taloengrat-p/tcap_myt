import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tcap_myt/src/data/repository/api_result.dart';
import 'package:tcap_myt/src/data/repository/base_repository.dart';
import 'package:tcap_myt/src/models/api/responses/test_current_price_response/test_current_price_response.dart';

class CurrencyRepository extends BaseRepository {
  Future<ApiResult<TestCurrentcyPriceResponse>> getCurrency() async {
    try {
      final result = await appApis.getCurrencyPrice();

      return ApiResult(data: result);
    } catch (error) {
      log('error : $error', name: runtimeType.toString());

      if (error is DioException) {
        return ApiResult(error: error);
      }
    }

    throw ('throw request error unknow');
  }

  Future<ApiResult<TestCurrentcyPriceResponse>> getCurrencyExpectError() async {
    try {
      final result = await appApis.getCurrencyPriceExpectError();

      return ApiResult(data: result);
    } catch (error) {
      log('error : $error', name: runtimeType.toString());

      if (error is DioException) {
        return ApiResult(error: error);
      }
    }

    throw ('throw request error unknow');
  }
}
