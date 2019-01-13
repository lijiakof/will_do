import 'package:flutter/material.dart';
import '../pages/settings/index.dart';
import '../pages/settings/demo.dart';

class SettingsRouters {

  index() {
    return MaterialPageRoute(
      builder: (context) => Settings()
    );
  }

  demo() {
    return MaterialPageRoute(
      builder: (context) => Demo()
    );
  }

}