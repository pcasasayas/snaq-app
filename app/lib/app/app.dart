import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

import 'navigation/routers/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = GetIt.instance<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      showPerformanceOverlay: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}