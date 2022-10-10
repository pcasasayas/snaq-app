// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardingRouteArgs>(
          orElse: () => const OnBoardingRouteArgs());
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: OnBoardingPage(key: args.key),
      );
    },
    DiscoveryRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DiscoveryPage(),
      );
    },
    ExploreRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ExplorePage(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: DetailPage(
          key: args.key,
          meal: args.meal,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          OnBoardingRoute.name,
          path: '/on-boarding-page',
        ),
        RouteConfig(
          DiscoveryRoute.name,
          path: '/discovery-page',
        ),
        RouteConfig(
          ExploreRoute.name,
          path: '/explore-page',
        ),
        RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({Key? key})
      : super(
          OnBoardingRoute.name,
          path: '/on-boarding-page',
          args: OnBoardingRouteArgs(key: key),
        );

  static const String name = 'OnBoardingRoute';
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnBoardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DiscoveryPage]
class DiscoveryRoute extends PageRouteInfo<void> {
  const DiscoveryRoute()
      : super(
          DiscoveryRoute.name,
          path: '/discovery-page',
        );

  static const String name = 'DiscoveryRoute';
}

/// generated route for
/// [ExplorePage]
class ExploreRoute extends PageRouteInfo<void> {
  const ExploreRoute()
      : super(
          ExploreRoute.name,
          path: '/explore-page',
        );

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [DetailPage]
class DetailRoute extends PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    Key? key,
    required MealModel meal,
  }) : super(
          DetailRoute.name,
          path: '/detail-page',
          args: DetailRouteArgs(
            key: key,
            meal: meal,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.meal,
  });

  final Key? key;

  final MealModel meal;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, meal: $meal}';
  }
}
