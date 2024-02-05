import 'package:tcap_myt/src/data/app_preference/app_preference.dart';
import 'package:tcap_myt/src/data/services/app_apis.dart';
import 'package:tcap_myt/src/data/services/app_client.dart';

abstract class BaseRepository {
  late AppPreference appPreference;
  late AppApis appApis;

  BaseRepository() {
    appPreference = AppPreference.instance;
    appApis = AppClient.instance.appApis;
  }
}
