import 'package:injectable/injectable.dart';

import '../app/navigation/routers/app_router.dart';

@module
abstract class NavigationDi {
  @lazySingleton
  AppRouter get router => AppRouter();
}