import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/app.dart';
import 'bootstrap.dart';
import 'di/injectable.dart';

void mainDelegate() {
  configureDependencies();
  
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // NavigationService.setupNavigationService();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    bootstrap(() => App());
  });
}