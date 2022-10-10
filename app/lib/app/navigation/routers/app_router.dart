import '../../../modules/meals/domain/models/meal/meal_model.dart';
import '../../pages/detail/detail_page.dart';
import '../../pages/discovery/discovery_page.dart';
import '../../pages/explore/explore_page.dart';
import '../../pages/onboarding/onboarding_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../pages/splash/splash_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: OnBoardingPage),
    AutoRoute(page: DiscoveryPage),
    AutoRoute(page: ExplorePage),
    AutoRoute(page: DetailPage),
  ],              
)              
// extend the generated private router
class AppRouter extends _$AppRouter{}