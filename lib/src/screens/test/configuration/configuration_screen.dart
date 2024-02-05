import 'package:flutter/material.dart';
import 'package:tcap_myt/src/screens/test/configuration/env/env_screen.dart';
import 'package:tcap_myt/src/screens/test/configuration/i18n/i18n_screen.dart';
import 'package:tcap_myt/src/screens/test/configuration/theme/theme_screen.dart';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({Key? key}) : super(key: key);

  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuration'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => const EnvScreen(),
                  ),
                );
              },
              child: const Text('dotenv')),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => const I18nScreen(),
                ),
              );
            },
            child: const Text('Locale i18n'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => const ThemeScreen(),
                ),
              );
            },
            child: const Text('Theme, Color, Image, Path and Style'),
          ),
        ],
      ),
    );
  }
}
