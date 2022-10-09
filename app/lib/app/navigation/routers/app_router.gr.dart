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
