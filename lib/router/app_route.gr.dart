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
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/foundation.dart' as _i19;
import 'package:flutter/material.dart' as _i17;

import '../main.dart' as _i2;
import '../presentation/auth/screens/login.dart' as _i8;
import '../presentation/domestic/screens/domestic.place.order.screen.dart'
    as _i13;
import '../presentation/educational/screen/educational.place.order.screen.dart'
    as _i12;
import '../presentation/landing/screens/landing.dart' as _i1;
import '../presentation/medical/screens/medical.place.order_screen.dart'
    as _i11;
import '../presentation/personal/screens/personal.place.order.screen.dart'
    as _i9;
import '../presentation/pet/screens/pet.place.order.screen.dart' as _i6;
import '../presentation/retirement/screens/retirment.place.order.screen.dart'
    as _i10;
import '../presentation/screens/homescreen.dart' as _i3;
import '../presentation/screens/insuranceslist_screen.dart' as _i4;
import '../presentation/screens/profile_screen.dart' as _i7;
import '../presentation/screens/user.insurances_screen.dart' as _i5;
import '../presentation/travel/screen/travel.place.order.screen.dart' as _i14;
import '../presentation/vehicle/screens/motor.place.order_screen.dart' as _i15;
import 'guard.dart' as _i18;

class AppRouter extends _i16.RootStackRouter {
  AppRouter({
    _i17.GlobalKey<_i17.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i18.AuthGuard authGuard;

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    LandingScreen.name: (routeData) {
      final args = routeData.argsAs<LandingScreenArgs>(
          orElse: () => const LandingScreenArgs());
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.LandingScreen(
          key: args.key,
          constraints: args.constraints,
        ),
        transitionsBuilder: _i16.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    MyApp.name: (routeData) {
      final args = routeData.argsAs<MyAppArgs>(orElse: () => const MyAppArgs());
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MyApp(key: args.key),
      );
    },
    HomeScreen.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    InsuranceListScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.InsuranceListScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserInsuranceListScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.UserInsuranceListScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PetPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.PetPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PersonalPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.PersonalPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RetirmentPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.RetirmentPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicalPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.MedicalPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EducationalPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.EducationalPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DomesticPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.DomesticPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TravelPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.TravelPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MotorPlaceOrderScreen.name: (routeData) {
      return _i16.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.MotorPlaceOrderScreen(),
        transitionsBuilder: _i16.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          LandingScreen.name,
          path: '/landing-screen',
          guards: [authGuard],
        ),
        _i16.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i16.RouteConfig(
          MyApp.name,
          path: '/my-app',
        ),
        _i16.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i16.RouteConfig(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        ),
        _i16.RouteConfig(
          UserInsuranceListScreen.name,
          path: '/user-insurance-list-screen',
        ),
        _i16.RouteConfig(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        ),
        _i16.RouteConfig(
          ProfileScreen.name,
          path: '/profile-screen',
        ),
        _i16.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i16.RouteConfig(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        ),
        _i16.RouteConfig(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        ),
        _i16.RouteConfig(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        ),
        _i16.RouteConfig(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        ),
        _i16.RouteConfig(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        ),
        _i16.RouteConfig(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        ),
        _i16.RouteConfig(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LandingScreen]
class LandingScreen extends _i16.PageRouteInfo<LandingScreenArgs> {
  LandingScreen({
    _i19.Key? key,
    _i17.BoxConstraints? constraints,
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

  final _i19.Key? key;

  final _i17.BoxConstraints? constraints;

  @override
  String toString() {
    return 'LandingScreenArgs{key: $key, constraints: $constraints}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.MyApp]
class MyApp extends _i16.PageRouteInfo<MyAppArgs> {
  MyApp({_i19.Key? key})
      : super(
          MyApp.name,
          path: '/my-app',
          args: MyAppArgs(key: key),
        );

  static const String name = 'MyApp';
}

class MyAppArgs {
  const MyAppArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'MyAppArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i16.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.InsuranceListScreen]
class InsuranceListScreen extends _i16.PageRouteInfo<void> {
  const InsuranceListScreen()
      : super(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        );

  static const String name = 'InsuranceListScreen';
}

/// generated route for
/// [_i5.UserInsuranceListScreen]
class UserInsuranceListScreen extends _i16.PageRouteInfo<void> {
  const UserInsuranceListScreen()
      : super(
          UserInsuranceListScreen.name,
          path: '/user-insurance-list-screen',
        );

  static const String name = 'UserInsuranceListScreen';
}

/// generated route for
/// [_i6.PetPlaceOrderScreen]
class PetPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const PetPlaceOrderScreen()
      : super(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        );

  static const String name = 'PetPlaceOrderScreen';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreen extends _i16.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i8.LoginScreen]
class LoginScreen extends _i16.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i9.PersonalPlaceOrderScreen]
class PersonalPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const PersonalPlaceOrderScreen()
      : super(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        );

  static const String name = 'PersonalPlaceOrderScreen';
}

/// generated route for
/// [_i10.RetirmentPlaceOrderScreen]
class RetirmentPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const RetirmentPlaceOrderScreen()
      : super(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        );

  static const String name = 'RetirmentPlaceOrderScreen';
}

/// generated route for
/// [_i11.MedicalPlaceOrderScreen]
class MedicalPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const MedicalPlaceOrderScreen()
      : super(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        );

  static const String name = 'MedicalPlaceOrderScreen';
}

/// generated route for
/// [_i12.EducationalPlaceOrderScreen]
class EducationalPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const EducationalPlaceOrderScreen()
      : super(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        );

  static const String name = 'EducationalPlaceOrderScreen';
}

/// generated route for
/// [_i13.DomesticPlaceOrderScreen]
class DomesticPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const DomesticPlaceOrderScreen()
      : super(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        );

  static const String name = 'DomesticPlaceOrderScreen';
}

/// generated route for
/// [_i14.TravelPlaceOrderScreen]
class TravelPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const TravelPlaceOrderScreen()
      : super(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        );

  static const String name = 'TravelPlaceOrderScreen';
}

/// generated route for
/// [_i15.MotorPlaceOrderScreen]
class MotorPlaceOrderScreen extends _i16.PageRouteInfo<void> {
  const MotorPlaceOrderScreen()
      : super(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        );

  static const String name = 'MotorPlaceOrderScreen';
}
