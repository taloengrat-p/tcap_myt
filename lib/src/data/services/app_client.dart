import 'package:dio/dio.dart';
import 'package:tcap_myt/src/constance/keys_dot_env.dart';
import 'package:tcap_myt/src/data/services/app_apis.dart';
import 'package:tcap_myt/src/utils/dotenv_utils.dart';

class AppClient {
  late Dio _dio;
  late AppApis _appApis;

  final Duration? connectTimeout = const Duration(seconds: 5);
  final Duration? receiveTimeout = const Duration(seconds: 3);

  AppClient._() {
    baseUrl = DotENVUtils.get<String>(KeysDotENV.dotEnvKeyBaseUrl);
    initialize();
  }

  static final instance = AppClient._();

  // getter section
  Dio get dio => _dio;
  AppApis get appApis => _appApis;
  ////

  late String baseUrl;

  void setConfigTimeout({Duration? connectTimeout, Duration? receiveTimeout}) {
    initConfigureDio(connectTimeout: connectTimeout, receiveTimeout: receiveTimeout);
  }

  void initConfigureDio({Duration? connectTimeout, Duration? receiveTimeout}) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout ?? this.connectTimeout,
      receiveTimeout: receiveTimeout ?? this.receiveTimeout,
    );

    _dio = Dio(options);
    initInterceptor();
  }

  void initInterceptor() {}

  void initialize() {
    initConfigureDio();
    initAppApi();
  }

  void initAppApi() {
    _appApis = AppApis(dio);
  }
}
