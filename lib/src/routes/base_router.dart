import 'package:flutter/material.dart';

class BaseRouter {
  Widget screen;

  BaseRouter(this.screen);

  Future<dynamic> navigate(BuildContext context) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  Future<dynamic> replace(BuildContext context) async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void pop(BuildContext context) {
    Navigator.of(context).pop(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
