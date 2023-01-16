// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i6;

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../../company_overviews/domain/company_data.dart' as _i5;
import '../../../company_overviews/presentation/chart_page.dart' as _i1;
import '../../../company_overviews/presentation/detail_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ChartRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ChartPage(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.DetailPage(
          key: args.key,
          data: args.data,
          backgroundColor: args.backgroundColor,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          ChartRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          DetailRoute.name,
          path: '/detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.ChartPage]
class ChartRoute extends _i3.PageRouteInfo<void> {
  const ChartRoute()
      : super(
          ChartRoute.name,
          path: '/',
        );

  static const String name = 'ChartRoute';
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i3.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i4.Key? key,
    required _i5.CompanyData data,
    required _i6.Color backgroundColor,
  }) : super(
          DetailRoute.name,
          path: '/detail-page',
          args: DetailRouteArgs(
            key: key,
            data: data,
            backgroundColor: backgroundColor,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.data,
    required this.backgroundColor,
  });

  final _i4.Key? key;

  final _i5.CompanyData data;

  final _i6.Color backgroundColor;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, data: $data, backgroundColor: $backgroundColor}';
  }
}
