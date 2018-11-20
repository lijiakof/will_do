import 'package:flutter/material.dart';
import '../pages/settings/index.dart';

class SettingsRouters {

  index() {
    return MaterialPageRoute(
      builder: (context) => Settings()
    );
  }

}