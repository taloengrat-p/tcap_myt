import 'package:flutter/material.dart';
import 'package:tcap_myt/src/constance/keys_dot_env.dart';
import 'package:tcap_myt/src/utils/dotenv_utils.dart';

class EnvScreen extends StatefulWidget {
  const EnvScreen({Key? key}) : super(key: key);

  @override
  _EnvScreenState createState() => _EnvScreenState();
}

class _EnvScreenState extends State<EnvScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DOTENV'),
      ),
      body: ListView(
        children: [
          Text('MODE = ${DotENVUtils.get(KeysDotENV.dotEnvKeyMode)}'),
          Text('BASE_URL = ${DotENVUtils.get(KeysDotENV.dotEnvKeyBaseUrl)}'),
        ],
      ),
    );
  }
}
