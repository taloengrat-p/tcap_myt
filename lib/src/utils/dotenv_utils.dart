import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotENVUtils {
  static T get<T>(String key, {String? fallback}) {
    return dotenv.get(key, fallback: fallback) as T;
  }
}
