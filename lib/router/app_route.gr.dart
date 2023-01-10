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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/foundation.dart' as _i13;
import 'package:flutter/material.dart' as _i11;

import '../main.dart' as _i2;
import '../presentation/domestic/screens/domestic.place.order.screen.dart'
    as _i7;
import '../presentation/homescreen.dart' as _i3;
import '../presentation/insuranceslist_screen.dart' as _i4;
import '../presentation/landing/screens/landing.dart' as _i1;
import '../presentation/medical/screens/medical.place.order_screen.dart' as _i6;
import '../presentation/retirement/screens/retirment.place.order.screen.dart'
    as _i5;
import '../presentation/travel/screen/travel.place.order.screen.dart' as _i8;
import '../presentation/vehicle/screens/motor.place.order_screen.dart' as _i9;
import 'guard.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter({
    _i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    LandingScreen.name: (routeData) {
      final args = routeData.argsAs<LandingScreenArgs>(
          orElse: () => const LandingScreenArgs());
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.LandingScreen(
          key: args.key,
          constraints: args.constraints,
        ),
        transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    InsuranceListScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.InsuranceListScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RetirmentPlaceOrderScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.RetirmentPlaceOrderScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicalPlaceOrderScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.MedicalPlaceOrderScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DomesticPlaceOrderScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.DomesticPlaceOrderScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TravelPlaceOrderScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.TravelPlaceOrderScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MotorPlaceOrderScreen.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.MotorPlaceOrderScreen(),
        transitionsBuilder: _i10.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          LandingScreen.name,
          path: '/landing-screen',
          guards: [authGuard],
        ),
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i10.RouteConfig(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        ),
        _i10.RouteConfig(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        ),
        _i10.RouteConfig(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        ),
        _i10.RouteConfig(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        ),
        _i10.RouteConfig(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        ),
        _i10.RouteConfig(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LandingScreen]
class LandingScreen extends _i10.PageRouteInfo<LandingScreenArgs> {
  LandingScreen({
    _i13.Key? key,
    _i11.BoxConstraints? constraints,
  }) : super(
          LandingScreen.name,
          path: '/landing-screen',
          args: LandingScreenArgs(
            key: key,
            constraints: constraints,
          ),
        );

  static const String name = 'LandingScreen';
}

class LandingScreenArgs {
  const LandingScreenArgs({
    this.key,
    this.constraints,
  });

  final _i13.Key? key;

  final _i11.BoxConstraints? constraints;

  @override
  String toString() {
    return 'LandingScreenArgs{key: $key, constraints: $constraints}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i10.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.InsuranceListScreen]
class InsuranceListScreen extends _i10.PageRouteInfo<void> {
  const InsuranceListScreen()
      : super(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        );

  static const String name = 'InsuranceListScreen';
}

/// generated route for
/// [_i5.RetirmentPlaceOrderScreen]
class RetirmentPlaceOrderScreen extends _i10.PageRouteInfo<void> {
  const RetirmentPlaceOrderScreen()
      : super(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        );

  static const String name = 'RetirmentPlaceOrderScreen';
}

/// generated route for
/// [_i6.MedicalPlaceOrderScreen]
class MedicalPlaceOrderScreen extends _i10.PageRouteInfo<void> {
  const MedicalPlaceOrderScreen()
      : super(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        );

  static const String name = 'MedicalPlaceOrderScreen';
}

/// generated route for
/// [_i7.DomesticPlaceOrderScreen]
class DomesticPlaceOrderScreen extends _i10.PageRouteInfo<void> {
  const DomesticPlaceOrderScreen()
      : super(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        );

  static const String name = 'DomesticPlaceOrderScreen';
}

/// generated route for
/// [_i8.TravelPlaceOrderScreen]
class TravelPlaceOrderScreen extends _i10.PageRouteInfo<void> {
  const TravelPlaceOrderScreen()
      : super(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        );

  static const String name = 'TravelPlaceOrderScreen';
}

/// generated route for
/// [_i9.MotorPlaceOrderScreen]
class MotorPlaceOrderScreen extends _i10.PageRouteInfo<void> {
  const MotorPlaceOrderScreen()
      : super(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        );

  static const String name = 'MotorPlaceOrderScreen';
}
