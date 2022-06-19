// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey,
      required this.initGuard,
      required this.authGuard})
      : super(navigatorKey);

  final InitGuard initGuard;

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    PageLoadingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PageLoading());
    },
    PageLoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PageLogin());
    },
    PageDashboardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PageDashboard());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(PageLoadingRoute.name, path: '/loading'),
        RouteConfig(PageLoginRoute.name, path: '/login'),
        RouteConfig(PageDashboardRoute.name,
            path: '/', guards: [initGuard, authGuard])
      ];
}

/// generated route for
/// [PageLoading]
class PageLoadingRoute extends PageRouteInfo<void> {
  const PageLoadingRoute() : super(PageLoadingRoute.name, path: '/loading');

  static const String name = 'PageLoadingRoute';
}

/// generated route for
/// [PageLogin]
class PageLoginRoute extends PageRouteInfo<void> {
  const PageLoginRoute() : super(PageLoginRoute.name, path: '/login');

  static const String name = 'PageLoginRoute';
}

/// generated route for
/// [PageDashboard]
class PageDashboardRoute extends PageRouteInfo<void> {
  const PageDashboardRoute() : super(PageDashboardRoute.name, path: '/');

  static const String name = 'PageDashboardRoute';
}
