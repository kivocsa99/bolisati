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
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart' as _i22;
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/foundation.dart' as _i20;
import 'package:flutter/material.dart' as _i18;

import '../domain/api/orders/user.orders.model.dart' as _i21;
import '../main.dart' as _i2;
import '../presentation/auth/screens/login.dart' as _i8;
import '../presentation/domestic/screens/domestic.place.order.screen.dart'
    as _i14;
import '../presentation/educational/screen/educational.place.order.screen.dart'
    as _i13;
import '../presentation/landing/screens/landing.dart' as _i1;
import '../presentation/medical/screens/medical.place.order_screen.dart'
    as _i12;
import '../presentation/personal/screens/personal.place.order.screen.dart'
    as _i9;
import '../presentation/pet/screens/pet.place.order.screen.dart' as _i6;
import '../presentation/retirement/screens/retirment.place.order.screen.dart'
    as _i11;
import '../presentation/screens/homescreen.dart' as _i3;
import '../presentation/screens/insuranceslist_screen.dart' as _i4;
import '../presentation/screens/pdfviewer_screen.dart' as _i10;
import '../presentation/screens/profile_screen.dart' as _i7;
import '../presentation/screens/user.insurances_screen.dart' as _i5;
import '../presentation/travel/screen/travel.place.order.screen.dart' as _i15;
import '../presentation/vehicle/screens/motor.place.order_screen.dart' as _i16;
import 'guard.dart' as _i19;

class AppRouter extends _i17.RootStackRouter {
  AppRouter({
    _i18.GlobalKey<_i18.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i19.AuthGuard authGuard;

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    LandingScreen.name: (routeData) {
      final args = routeData.argsAs<LandingScreenArgs>(
          orElse: () => const LandingScreenArgs());
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.LandingScreen(
          key: args.key,
          constraints: args.constraints,
        ),
        transitionsBuilder: _i17.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    MyApp.name: (routeData) {
      final args = routeData.argsAs<MyAppArgs>(orElse: () => const MyAppArgs());
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MyApp(key: args.key),
      );
    },
    HomeScreen.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    InsuranceListScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.InsuranceListScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserInsuranceListScreen.name: (routeData) {
      final args = routeData.argsAs<UserInsuranceListScreenArgs>(
          orElse: () => const UserInsuranceListScreenArgs());
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.UserInsuranceListScreen(
          key: args.key,
          order: args.order,
        ),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PetPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.PetPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PersonalPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.PersonalPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PdfScreen.name: (routeData) {
      final args =
          routeData.argsAs<PdfScreenArgs>(orElse: () => const PdfScreenArgs());
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.PdfScreen(
          key: args.key,
          url: args.url,
        ),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RetirmentPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.RetirmentPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicalPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i12.MedicalPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EducationalPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.EducationalPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DomesticPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.DomesticPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TravelPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.TravelPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MotorPlaceOrderScreen.name: (routeData) {
      return _i17.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.MotorPlaceOrderScreen(),
        transitionsBuilder: _i17.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(
          LandingScreen.name,
          path: '/landing-screen',
          guards: [authGuard],
        ),
        _i17.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i17.RouteConfig(
          MyApp.name,
          path: '/my-app',
        ),
        _i17.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i17.RouteConfig(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        ),
        _i17.RouteConfig(
          UserInsuranceListScreen.name,
          path: '/user-insurance-list-screen',
        ),
        _i17.RouteConfig(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        ),
        _i17.RouteConfig(
          ProfileScreen.name,
          path: '/profile-screen',
        ),
        _i17.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i17.RouteConfig(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        ),
        _i17.RouteConfig(
          PdfScreen.name,
          path: '/pdf-screen',
        ),
        _i17.RouteConfig(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        ),
        _i17.RouteConfig(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        ),
        _i17.RouteConfig(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        ),
        _i17.RouteConfig(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        ),
        _i17.RouteConfig(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        ),
        _i17.RouteConfig(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LandingScreen]
class LandingScreen extends _i17.PageRouteInfo<LandingScreenArgs> {
  LandingScreen({
    _i20.Key? key,
    _i18.BoxConstraints? constraints,
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

  final _i20.Key? key;

  final _i18.BoxConstraints? constraints;

  @override
  String toString() {
    return 'LandingScreenArgs{key: $key, constraints: $constraints}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.MyApp]
class MyApp extends _i17.PageRouteInfo<MyAppArgs> {
  MyApp({_i20.Key? key})
      : super(
          MyApp.name,
          path: '/my-app',
          args: MyAppArgs(key: key),
        );

  static const String name = 'MyApp';
}

class MyAppArgs {
  const MyAppArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'MyAppArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i17.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.InsuranceListScreen]
class InsuranceListScreen extends _i17.PageRouteInfo<void> {
  const InsuranceListScreen()
      : super(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        );

  static const String name = 'InsuranceListScreen';
}

/// generated route for
/// [_i5.UserInsuranceListScreen]
class UserInsuranceListScreen
    extends _i17.PageRouteInfo<UserInsuranceListScreenArgs> {
  UserInsuranceListScreen({
    _i20.Key? key,
    _i21.UserOrdersModel? order,
  }) : super(
          UserInsuranceListScreen.name,
          path: '/user-insurance-list-screen',
          args: UserInsuranceListScreenArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'UserInsuranceListScreen';
}

class UserInsuranceListScreenArgs {
  const UserInsuranceListScreenArgs({
    this.key,
    this.order,
  });

  final _i20.Key? key;

  final _i21.UserOrdersModel? order;

  @override
  String toString() {
    return 'UserInsuranceListScreenArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i6.PetPlaceOrderScreen]
class PetPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const PetPlaceOrderScreen()
      : super(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        );

  static const String name = 'PetPlaceOrderScreen';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreen extends _i17.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i8.LoginScreen]
class LoginScreen extends _i17.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i9.PersonalPlaceOrderScreen]
class PersonalPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const PersonalPlaceOrderScreen()
      : super(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        );

  static const String name = 'PersonalPlaceOrderScreen';
}

/// generated route for
/// [_i10.PdfScreen]
class PdfScreen extends _i17.PageRouteInfo<PdfScreenArgs> {
  PdfScreen({
    _i20.Key? key,
    _i22.PDFDocument? url,
  }) : super(
          PdfScreen.name,
          path: '/pdf-screen',
          args: PdfScreenArgs(
            key: key,
            url: url,
          ),
        );

  static const String name = 'PdfScreen';
}

class PdfScreenArgs {
  const PdfScreenArgs({
    this.key,
    this.url,
  });

  final _i20.Key? key;

  final _i22.PDFDocument? url;

  @override
  String toString() {
    return 'PdfScreenArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i11.RetirmentPlaceOrderScreen]
class RetirmentPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const RetirmentPlaceOrderScreen()
      : super(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        );

  static const String name = 'RetirmentPlaceOrderScreen';
}

/// generated route for
/// [_i12.MedicalPlaceOrderScreen]
class MedicalPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const MedicalPlaceOrderScreen()
      : super(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        );

  static const String name = 'MedicalPlaceOrderScreen';
}

/// generated route for
/// [_i13.EducationalPlaceOrderScreen]
class EducationalPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const EducationalPlaceOrderScreen()
      : super(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        );

  static const String name = 'EducationalPlaceOrderScreen';
}

/// generated route for
/// [_i14.DomesticPlaceOrderScreen]
class DomesticPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const DomesticPlaceOrderScreen()
      : super(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        );

  static const String name = 'DomesticPlaceOrderScreen';
}

/// generated route for
/// [_i15.TravelPlaceOrderScreen]
class TravelPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const TravelPlaceOrderScreen()
      : super(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        );

  static const String name = 'TravelPlaceOrderScreen';
}

/// generated route for
/// [_i16.MotorPlaceOrderScreen]
class MotorPlaceOrderScreen extends _i17.PageRouteInfo<void> {
  const MotorPlaceOrderScreen()
      : super(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        );

  static const String name = 'MotorPlaceOrderScreen';
}
