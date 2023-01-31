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
import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart' as _i32;
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/foundation.dart' as _i30;
import 'package:flutter/material.dart' as _i28;

import '../domain/api/orders/domesticworkerorders/domesticworkersmodel.dart'
    as _i37;
import '../domain/api/orders/educationalorders/educationalordermodel.dart'
    as _i39;
import '../domain/api/orders/medicalorders/medicalordermodel.dart' as _i34;
import '../domain/api/orders/motororders/motorordermodel.dart' as _i33;
import '../domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart'
    as _i40;
import '../domain/api/orders/petorders/petordermodel.dart' as _i36;
import '../domain/api/orders/retirementorders/retirementordermodel.dart'
    as _i38;
import '../domain/api/orders/travelorders/travelordermodel.dart' as _i35;
import '../domain/api/orders/user.orders.model.dart' as _i31;
import '../main.dart' as _i2;
import '../presentation/auth/screens/forgetpassword_screen.dart' as _i11;
import '../presentation/auth/screens/login.dart' as _i8;
import '../presentation/domestic/screens/domestic.place.order.screen.dart'
    as _i24;
import '../presentation/educational/screen/educational.place.order.screen.dart'
    as _i23;
import '../presentation/landing/screens/landing.dart' as _i1;
import '../presentation/medical/screens/medical.place.order_screen.dart'
    as _i22;
import '../presentation/personal/screens/personal.place.order.screen.dart'
    as _i9;
import '../presentation/pet/screens/pet.place.order.screen.dart' as _i6;
import '../presentation/retirement/screens/retirment.place.order.screen.dart'
    as _i21;
import '../presentation/screens/domestic_insurance_screen.dart' as _i16;
import '../presentation/screens/educational_insurance_screen.dart' as _i18;
import '../presentation/screens/filterd_screen.dart' as _i19;
import '../presentation/screens/homescreen.dart' as _i3;
import '../presentation/screens/insuranceslist_screen.dart' as _i4;
import '../presentation/screens/medical_insurance_screen.dart' as _i13;
import '../presentation/screens/motor_insurance_screen.dart' as _i12;
import '../presentation/screens/pdfviewer_screen.dart' as _i10;
import '../presentation/screens/personal_insurance_screen.dart' as _i20;
import '../presentation/screens/pet_insurance_screen.dart' as _i15;
import '../presentation/screens/profile_screen.dart' as _i7;
import '../presentation/screens/retirement_insurance_screen.dart' as _i17;
import '../presentation/screens/travel_insurance_screen.dart' as _i14;
import '../presentation/screens/user.insurances_screen.dart' as _i5;
import '../presentation/travel/screen/travel.place.order.screen.dart' as _i25;
import '../presentation/vehicle/screens/motor.place.order_screen.dart' as _i26;
import 'guard.dart' as _i29;

class AppRouter extends _i27.RootStackRouter {
  AppRouter({
    _i28.GlobalKey<_i28.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i29.AuthGuard authGuard;

  @override
  final Map<String, _i27.PageFactory> pagesMap = {
    LandingScreen.name: (routeData) {
      final args = routeData.argsAs<LandingScreenArgs>(
          orElse: () => const LandingScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.LandingScreen(
          key: args.key,
          constraints: args.constraints,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    MyApp.name: (routeData) {
      final args = routeData.argsAs<MyAppArgs>(orElse: () => const MyAppArgs());
      return _i27.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.MyApp(key: args.key),
      );
    },
    HomeScreen.name: (routeData) {
      return _i27.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    InsuranceListScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.InsuranceListScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UserInsuranceListScreen.name: (routeData) {
      final args = routeData.argsAs<UserInsuranceListScreenArgs>(
          orElse: () => const UserInsuranceListScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.UserInsuranceListScreen(
          key: args.key,
          order: args.order,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PetPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.PetPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PersonalPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.PersonalPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PdfScreen.name: (routeData) {
      final args =
          routeData.argsAs<PdfScreenArgs>(orElse: () => const PdfScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i10.PdfScreen(
          key: args.key,
          url: args.url,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgetPasswordScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.ForgetPasswordScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MotorInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<MotorInsuranceScreenArgs>(
          orElse: () => const MotorInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.MotorInsuranceScreen(
          key: args.key,
          id: args.id,
          type: args.type,
          model: args.model,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicalInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<MedicalInsuranceScreenArgs>(
          orElse: () => const MedicalInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i13.MedicalInsuranceScreen(
          key: args.key,
          model: args.model,
          id: args.id,
          type: args.type,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TravelInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<TravelInsuranceScreenArgs>(
          orElse: () => const TravelInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i14.TravelInsuranceScreen(
          key: args.key,
          model: args.model,
          id: args.id,
          type: args.type,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PetInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<PetInsuranceScreenArgs>(
          orElse: () => const PetInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i15.PetInsuranceScreen(
          key: args.key,
          model: args.model,
          id: args.id,
          type: args.type,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DomesticInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<DomesticInsuranceScreenArgs>(
          orElse: () => const DomesticInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i16.DomesticInsuranceScreen(
          key: args.key,
          id: args.id,
          type: args.type,
          model: args.model,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RetirementInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<RetirementInsuranceScreenArgs>(
          orElse: () => const RetirementInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i17.RetirementInsuranceScreen(
          key: args.key,
          model: args.model,
          id: args.id,
          type: args.type,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EducationalInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<EducationalInsuranceScreenArgs>(
          orElse: () => const EducationalInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i18.EducationalInsuranceScreen(
          key: args.key,
          id: args.id,
          type: args.type,
          model: args.model,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FilteredScreen.name: (routeData) {
      final args = routeData.argsAs<FilteredScreenArgs>();
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i19.FilteredScreen(
          key: args.key,
          motor: args.motor,
          medical: args.medical,
          travel: args.travel,
          pet: args.pet,
          domestic: args.domestic,
          personal: args.personal,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PersonalInsuranceScreen.name: (routeData) {
      final args = routeData.argsAs<PersonalInsuranceScreenArgs>(
          orElse: () => const PersonalInsuranceScreenArgs());
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.PersonalInsuranceScreen(
          key: args.key,
          id: args.id,
          type: args.type,
          model: args.model,
        ),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RetirmentPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i21.RetirmentPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicalPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i22.MedicalPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EducationalPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i23.EducationalPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DomesticPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i24.DomesticPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TravelPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i25.TravelPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MotorPlaceOrderScreen.name: (routeData) {
      return _i27.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i26.MotorPlaceOrderScreen(),
        transitionsBuilder: _i27.TransitionsBuilders.slideBottom,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i27.RouteConfig> get routes => [
        _i27.RouteConfig(
          LandingScreen.name,
          path: '/landing-screen',
          guards: [authGuard],
        ),
        _i27.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i27.RouteConfig(
          MyApp.name,
          path: '/my-app',
        ),
        _i27.RouteConfig(
          HomeScreen.name,
          path: '/home-screen',
        ),
        _i27.RouteConfig(
          InsuranceListScreen.name,
          path: '/insurance-list-screen',
        ),
        _i27.RouteConfig(
          UserInsuranceListScreen.name,
          path: '/user-insurance-list-screen',
        ),
        _i27.RouteConfig(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        ),
        _i27.RouteConfig(
          ProfileScreen.name,
          path: '/profile-screen',
        ),
        _i27.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i27.RouteConfig(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        ),
        _i27.RouteConfig(
          PdfScreen.name,
          path: '/pdf-screen',
        ),
        _i27.RouteConfig(
          ForgetPasswordScreen.name,
          path: '/forget-password-screen',
        ),
        _i27.RouteConfig(
          MotorInsuranceScreen.name,
          path: '/motor-insurance-screen',
        ),
        _i27.RouteConfig(
          MedicalInsuranceScreen.name,
          path: '/medical-insurance-screen',
        ),
        _i27.RouteConfig(
          TravelInsuranceScreen.name,
          path: '/travel-insurance-screen',
        ),
        _i27.RouteConfig(
          PetInsuranceScreen.name,
          path: '/pet-insurance-screen',
        ),
        _i27.RouteConfig(
          DomesticInsuranceScreen.name,
          path: '/domestic-insurance-screen',
        ),
        _i27.RouteConfig(
          RetirementInsuranceScreen.name,
          path: '/retirement-insurance-screen',
        ),
        _i27.RouteConfig(
          EducationalInsuranceScreen.name,
          path: '/educational-insurance-screen',
        ),
        _i27.RouteConfig(
          FilteredScreen.name,
          path: '/filtered-screen',
        ),
        _i27.RouteConfig(
          PersonalInsuranceScreen.name,
          path: '/personal-insurance-screen',
        ),
        _i27.RouteConfig(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        ),
        _i27.RouteConfig(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        ),
        _i27.RouteConfig(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        ),
        _i27.RouteConfig(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        ),
        _i27.RouteConfig(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        ),
        _i27.RouteConfig(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LandingScreen]
class LandingScreen extends _i27.PageRouteInfo<LandingScreenArgs> {
  LandingScreen({
    _i30.Key? key,
    _i28.BoxConstraints? constraints,
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

  final _i30.Key? key;

  final _i28.BoxConstraints? constraints;

  @override
  String toString() {
    return 'LandingScreenArgs{key: $key, constraints: $constraints}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i27.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.MyApp]
class MyApp extends _i27.PageRouteInfo<MyAppArgs> {
  MyApp({_i30.Key? key})
      : super(
          MyApp.name,
          path: '/my-app',
          args: MyAppArgs(key: key),
        );

  static const String name = 'MyApp';
}

class MyAppArgs {
  const MyAppArgs({this.key});

  final _i30.Key? key;

  @override
  String toString() {
    return 'MyAppArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i27.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.InsuranceListScreen]
class InsuranceListScreen extends _i27.PageRouteInfo<void> {
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
    extends _i27.PageRouteInfo<UserInsuranceListScreenArgs> {
  UserInsuranceListScreen({
    _i30.Key? key,
    _i31.UserOrdersModel? order,
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

  final _i30.Key? key;

  final _i31.UserOrdersModel? order;

  @override
  String toString() {
    return 'UserInsuranceListScreenArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i6.PetPlaceOrderScreen]
class PetPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const PetPlaceOrderScreen()
      : super(
          PetPlaceOrderScreen.name,
          path: '/pet-place-order-screen',
        );

  static const String name = 'PetPlaceOrderScreen';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreen extends _i27.PageRouteInfo<void> {
  const ProfileScreen()
      : super(
          ProfileScreen.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i8.LoginScreen]
class LoginScreen extends _i27.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i9.PersonalPlaceOrderScreen]
class PersonalPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const PersonalPlaceOrderScreen()
      : super(
          PersonalPlaceOrderScreen.name,
          path: '/personal-place-order-screen',
        );

  static const String name = 'PersonalPlaceOrderScreen';
}

/// generated route for
/// [_i10.PdfScreen]
class PdfScreen extends _i27.PageRouteInfo<PdfScreenArgs> {
  PdfScreen({
    _i30.Key? key,
    _i32.PDFDocument? url,
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

  final _i30.Key? key;

  final _i32.PDFDocument? url;

  @override
  String toString() {
    return 'PdfScreenArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i11.ForgetPasswordScreen]
class ForgetPasswordScreen extends _i27.PageRouteInfo<void> {
  const ForgetPasswordScreen()
      : super(
          ForgetPasswordScreen.name,
          path: '/forget-password-screen',
        );

  static const String name = 'ForgetPasswordScreen';
}

/// generated route for
/// [_i12.MotorInsuranceScreen]
class MotorInsuranceScreen
    extends _i27.PageRouteInfo<MotorInsuranceScreenArgs> {
  MotorInsuranceScreen({
    _i30.Key? key,
    String? id,
    String? type,
    _i33.MotorOrderModel? model,
  }) : super(
          MotorInsuranceScreen.name,
          path: '/motor-insurance-screen',
          args: MotorInsuranceScreenArgs(
            key: key,
            id: id,
            type: type,
            model: model,
          ),
        );

  static const String name = 'MotorInsuranceScreen';
}

class MotorInsuranceScreenArgs {
  const MotorInsuranceScreenArgs({
    this.key,
    this.id,
    this.type,
    this.model,
  });

  final _i30.Key? key;

  final String? id;

  final String? type;

  final _i33.MotorOrderModel? model;

  @override
  String toString() {
    return 'MotorInsuranceScreenArgs{key: $key, id: $id, type: $type, model: $model}';
  }
}

/// generated route for
/// [_i13.MedicalInsuranceScreen]
class MedicalInsuranceScreen
    extends _i27.PageRouteInfo<MedicalInsuranceScreenArgs> {
  MedicalInsuranceScreen({
    _i30.Key? key,
    _i34.MedicalOrderModel? model,
    String? id,
    String? type,
  }) : super(
          MedicalInsuranceScreen.name,
          path: '/medical-insurance-screen',
          args: MedicalInsuranceScreenArgs(
            key: key,
            model: model,
            id: id,
            type: type,
          ),
        );

  static const String name = 'MedicalInsuranceScreen';
}

class MedicalInsuranceScreenArgs {
  const MedicalInsuranceScreenArgs({
    this.key,
    this.model,
    this.id,
    this.type,
  });

  final _i30.Key? key;

  final _i34.MedicalOrderModel? model;

  final String? id;

  final String? type;

  @override
  String toString() {
    return 'MedicalInsuranceScreenArgs{key: $key, model: $model, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i14.TravelInsuranceScreen]
class TravelInsuranceScreen
    extends _i27.PageRouteInfo<TravelInsuranceScreenArgs> {
  TravelInsuranceScreen({
    _i30.Key? key,
    _i35.TravelOrderModel? model,
    String? id,
    String? type,
  }) : super(
          TravelInsuranceScreen.name,
          path: '/travel-insurance-screen',
          args: TravelInsuranceScreenArgs(
            key: key,
            model: model,
            id: id,
            type: type,
          ),
        );

  static const String name = 'TravelInsuranceScreen';
}

class TravelInsuranceScreenArgs {
  const TravelInsuranceScreenArgs({
    this.key,
    this.model,
    this.id,
    this.type,
  });

  final _i30.Key? key;

  final _i35.TravelOrderModel? model;

  final String? id;

  final String? type;

  @override
  String toString() {
    return 'TravelInsuranceScreenArgs{key: $key, model: $model, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i15.PetInsuranceScreen]
class PetInsuranceScreen extends _i27.PageRouteInfo<PetInsuranceScreenArgs> {
  PetInsuranceScreen({
    _i30.Key? key,
    _i36.PetOrderModel? model,
    String? id,
    String? type,
  }) : super(
          PetInsuranceScreen.name,
          path: '/pet-insurance-screen',
          args: PetInsuranceScreenArgs(
            key: key,
            model: model,
            id: id,
            type: type,
          ),
        );

  static const String name = 'PetInsuranceScreen';
}

class PetInsuranceScreenArgs {
  const PetInsuranceScreenArgs({
    this.key,
    this.model,
    this.id,
    this.type,
  });

  final _i30.Key? key;

  final _i36.PetOrderModel? model;

  final String? id;

  final String? type;

  @override
  String toString() {
    return 'PetInsuranceScreenArgs{key: $key, model: $model, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i16.DomesticInsuranceScreen]
class DomesticInsuranceScreen
    extends _i27.PageRouteInfo<DomesticInsuranceScreenArgs> {
  DomesticInsuranceScreen({
    _i30.Key? key,
    String? id,
    String? type,
    _i37.DomesticWorkersOrderModel? model,
  }) : super(
          DomesticInsuranceScreen.name,
          path: '/domestic-insurance-screen',
          args: DomesticInsuranceScreenArgs(
            key: key,
            id: id,
            type: type,
            model: model,
          ),
        );

  static const String name = 'DomesticInsuranceScreen';
}

class DomesticInsuranceScreenArgs {
  const DomesticInsuranceScreenArgs({
    this.key,
    this.id,
    this.type,
    this.model,
  });

  final _i30.Key? key;

  final String? id;

  final String? type;

  final _i37.DomesticWorkersOrderModel? model;

  @override
  String toString() {
    return 'DomesticInsuranceScreenArgs{key: $key, id: $id, type: $type, model: $model}';
  }
}

/// generated route for
/// [_i17.RetirementInsuranceScreen]
class RetirementInsuranceScreen
    extends _i27.PageRouteInfo<RetirementInsuranceScreenArgs> {
  RetirementInsuranceScreen({
    _i30.Key? key,
    _i38.RetirementOrderModel? model,
    String? id,
    String? type,
  }) : super(
          RetirementInsuranceScreen.name,
          path: '/retirement-insurance-screen',
          args: RetirementInsuranceScreenArgs(
            key: key,
            model: model,
            id: id,
            type: type,
          ),
        );

  static const String name = 'RetirementInsuranceScreen';
}

class RetirementInsuranceScreenArgs {
  const RetirementInsuranceScreenArgs({
    this.key,
    this.model,
    this.id,
    this.type,
  });

  final _i30.Key? key;

  final _i38.RetirementOrderModel? model;

  final String? id;

  final String? type;

  @override
  String toString() {
    return 'RetirementInsuranceScreenArgs{key: $key, model: $model, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i18.EducationalInsuranceScreen]
class EducationalInsuranceScreen
    extends _i27.PageRouteInfo<EducationalInsuranceScreenArgs> {
  EducationalInsuranceScreen({
    _i30.Key? key,
    String? id,
    String? type,
    _i39.EducationalOrderModel? model,
  }) : super(
          EducationalInsuranceScreen.name,
          path: '/educational-insurance-screen',
          args: EducationalInsuranceScreenArgs(
            key: key,
            id: id,
            type: type,
            model: model,
          ),
        );

  static const String name = 'EducationalInsuranceScreen';
}

class EducationalInsuranceScreenArgs {
  const EducationalInsuranceScreenArgs({
    this.key,
    this.id,
    this.type,
    this.model,
  });

  final _i30.Key? key;

  final String? id;

  final String? type;

  final _i39.EducationalOrderModel? model;

  @override
  String toString() {
    return 'EducationalInsuranceScreenArgs{key: $key, id: $id, type: $type, model: $model}';
  }
}

/// generated route for
/// [_i19.FilteredScreen]
class FilteredScreen extends _i27.PageRouteInfo<FilteredScreenArgs> {
  FilteredScreen({
    _i30.Key? key,
    required List<dynamic> motor,
    required List<dynamic> medical,
    required List<dynamic> travel,
    required List<dynamic> pet,
    required List<dynamic> domestic,
    required List<dynamic> personal,
  }) : super(
          FilteredScreen.name,
          path: '/filtered-screen',
          args: FilteredScreenArgs(
            key: key,
            motor: motor,
            medical: medical,
            travel: travel,
            pet: pet,
            domestic: domestic,
            personal: personal,
          ),
        );

  static const String name = 'FilteredScreen';
}

class FilteredScreenArgs {
  const FilteredScreenArgs({
    this.key,
    required this.motor,
    required this.medical,
    required this.travel,
    required this.pet,
    required this.domestic,
    required this.personal,
  });

  final _i30.Key? key;

  final List<dynamic> motor;

  final List<dynamic> medical;

  final List<dynamic> travel;

  final List<dynamic> pet;

  final List<dynamic> domestic;

  final List<dynamic> personal;

  @override
  String toString() {
    return 'FilteredScreenArgs{key: $key, motor: $motor, medical: $medical, travel: $travel, pet: $pet, domestic: $domestic, personal: $personal}';
  }
}

/// generated route for
/// [_i20.PersonalInsuranceScreen]
class PersonalInsuranceScreen
    extends _i27.PageRouteInfo<PersonalInsuranceScreenArgs> {
  PersonalInsuranceScreen({
    _i30.Key? key,
    String? id,
    String? type,
    _i40.PersonalAccidentOrderModel? model,
  }) : super(
          PersonalInsuranceScreen.name,
          path: '/personal-insurance-screen',
          args: PersonalInsuranceScreenArgs(
            key: key,
            id: id,
            type: type,
            model: model,
          ),
        );

  static const String name = 'PersonalInsuranceScreen';
}

class PersonalInsuranceScreenArgs {
  const PersonalInsuranceScreenArgs({
    this.key,
    this.id,
    this.type,
    this.model,
  });

  final _i30.Key? key;

  final String? id;

  final String? type;

  final _i40.PersonalAccidentOrderModel? model;

  @override
  String toString() {
    return 'PersonalInsuranceScreenArgs{key: $key, id: $id, type: $type, model: $model}';
  }
}

/// generated route for
/// [_i21.RetirmentPlaceOrderScreen]
class RetirmentPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const RetirmentPlaceOrderScreen()
      : super(
          RetirmentPlaceOrderScreen.name,
          path: '/retirment-place-order-screen',
        );

  static const String name = 'RetirmentPlaceOrderScreen';
}

/// generated route for
/// [_i22.MedicalPlaceOrderScreen]
class MedicalPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const MedicalPlaceOrderScreen()
      : super(
          MedicalPlaceOrderScreen.name,
          path: '/medical-place-order-screen',
        );

  static const String name = 'MedicalPlaceOrderScreen';
}

/// generated route for
/// [_i23.EducationalPlaceOrderScreen]
class EducationalPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const EducationalPlaceOrderScreen()
      : super(
          EducationalPlaceOrderScreen.name,
          path: '/educational-place-order-screen',
        );

  static const String name = 'EducationalPlaceOrderScreen';
}

/// generated route for
/// [_i24.DomesticPlaceOrderScreen]
class DomesticPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const DomesticPlaceOrderScreen()
      : super(
          DomesticPlaceOrderScreen.name,
          path: '/domestic-place-order-screen',
        );

  static const String name = 'DomesticPlaceOrderScreen';
}

/// generated route for
/// [_i25.TravelPlaceOrderScreen]
class TravelPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const TravelPlaceOrderScreen()
      : super(
          TravelPlaceOrderScreen.name,
          path: '/travel-place-order-screen',
        );

  static const String name = 'TravelPlaceOrderScreen';
}

/// generated route for
/// [_i26.MotorPlaceOrderScreen]
class MotorPlaceOrderScreen extends _i27.PageRouteInfo<void> {
  const MotorPlaceOrderScreen()
      : super(
          MotorPlaceOrderScreen.name,
          path: '/motor-place-order-screen',
        );

  static const String name = 'MotorPlaceOrderScreen';
}
