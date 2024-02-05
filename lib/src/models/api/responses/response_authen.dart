// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer' as develop;

class ResponseAuth {
  final String token;
  final int timestamp;

  ResponseAuth({
    required this.token,
    required this.timestamp,
  }) {
    develop.log('message');
  }

  @override
  String toString() => 'ResponseAuth(token: $token, timestamp: $timestamp)';
}
