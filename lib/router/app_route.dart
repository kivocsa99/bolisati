import 'package:auto_route/auto_route.dart';
import 'package:bolisati/main.dart';
import 'package:bolisati/presentation/domestic/screens/domestic.place.order.screen.dart';
import 'package:bolisati/presentation/homescreen.dart';
import 'package:bolisati/presentation/insuranceslist_screen.dart';
import 'package:bolisati/presentation/landing/screens/landing.dart';
import 'package:bolisati/presentation/medical/screens/medical.place.order_screen.dart';
import 'package:bolisati/presentation/retirement/screens/retirment.place.order.screen.dart';
import 'package:bolisati/presentation/travel/screen/travel.place.order.screen.dart';
import 'package:bolisati/presentation/vehicle/screens/motor.place.order_screen.dart';

import 'package:bolisati/router/guard.dart';

@MaterialAutoRouter(routes: [
  CustomRoute(
      page: LandingScreen,
      guards: [AuthGuard],
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500),
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: HomeScreen),
  CustomRoute(
      page: InsuranceListScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: RetirmentPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: MedicalPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
        CustomRoute(
      page: DomesticPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: TravelPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: MotorPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500)
], replaceInRouteName: "Page,Route")
class $AppRouter {}
