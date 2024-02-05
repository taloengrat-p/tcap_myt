import 'package:dio/dio.dart';

class ApiResult<T> {
  final T? data;
  final DioException? error;

  ApiResult({
    this.data,
    this.error,
  });

  void when({required Function(T data) onSuccess, required Function(DioException error) onFailure}) {
    if (data != null) {
      onSuccess.call(data as T);
    }

    if (error != null) {
      onFailure.call(error as DioException);
    }
  }
}
