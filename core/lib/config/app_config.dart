

import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'app_config_params.dart';

class AppConfig {
  static void setConfig({
    required String name, 
    Color color = Colors.red,
    BannerLocation location = BannerLocation.bottomStart,
    required AppConfigParams parameters,
  }) {
    FlavorConfig(
      name: name,
      color: color,
      location: location,
      variables: parameters.toJson(),
    );
  }

  static dynamic getVariable(String name) {
    return FlavorConfig.instance.variables[name];
  }
}