
import 'dart:async';

import 'package:core/base/presentation/bloc/simple_bloc_observer.dart';
import 'package:core/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    MyLogger.e(
      tag: 'FlutterError.onError', 
      msg: details.exceptionAsString(), 
      error: details.stack
    );
  };

  Bloc.observer = SimpleBlocObserver();

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => MyLogger.e(
      tag: 'FlutterError.onError', 
      msg: error.toString(), 
      error: stackTrace
    ),
  );
}