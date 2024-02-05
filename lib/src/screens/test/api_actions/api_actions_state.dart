// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

import 'package:tcap_myt/src/models/api/responses/test_current_price_response/test_current_price_response.dart';

abstract class ApiActionsState {
  const ApiActionsState() : super();
}

class ApiActionsInitial extends ApiActionsState {
  @override
  String toString() => 'ApiActionsInitial';
}

class ApiActionsLoading extends ApiActionsState {
  @override
  String toString() => 'ApiActionsLoading';
}

class ApiActionsSuccess extends ApiActionsState {
  TestCurrentcyPriceResponse currentcyPriceResponse;

  ApiActionsSuccess(
    this.currentcyPriceResponse,
  );
  @override
  String toString() => 'ApiActionsSuccess';
}

class ApiActionsFailure extends ApiActionsState {
  final DioException error;

  ApiActionsFailure(this.error);

  @override
  String toString() => 'ApiActionsFailure(exception: $error)';
}
