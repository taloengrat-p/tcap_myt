import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcap_myt/src/data/repository/implement/currency_repository.dart';
import 'package:tcap_myt/src/models/api/responses/test_current_price_response/test_current_price_response.dart';
import 'package:tcap_myt/src/screens/test/api_actions/api_actions_state.dart';

class ApiActionsCubit extends Cubit<ApiActionsState> {
  final CurrencyRepository _currencyRepository = CurrencyRepository();

  ApiActionsCubit() : super(ApiActionsInitial());

  void onFetchExpectSuccess() async {
    emit(ApiActionsLoading());
    final result = await _currencyRepository.getCurrency();

    result.when(
      onSuccess: (data) {
        log('onFetchExpectSuccess(): onSuccess(): $data', name: runtimeType.toString());
        emit(ApiActionsSuccess(data));
      },
      onFailure: (error) {
        log('onFetchExpectSuccess(): onFailure(): $error', name: runtimeType.toString());
        emit(ApiActionsFailure(error));
      },
    );
  }

  void onFetchExpectError() async {
    emit(ApiActionsLoading());
    final result = await _currencyRepository.getCurrencyExpectError();

    result.when(
      onSuccess: (TestCurrentcyPriceResponse data) {
        log('onFetchExpectError(): onSuccess(): $data', name: runtimeType.toString());
        emit(ApiActionsSuccess(data));
      },
      onFailure: (DioException error) {
        log('onFetchExpectError(): onFailure(): $error', name: runtimeType.toString());
        emit(ApiActionsFailure(error));
      },
    );
  }
}
