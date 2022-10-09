import 'package:get_it/get_it.dart';

import '../routers/app_router.dart';

class NavigationService {
  static void setupNavigationService() {
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
  }
}