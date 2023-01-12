import 'package:auto_route/auto_route.dart';
import 'package:bolisati/main.dart';
import 'package:bolisati/presentation/auth/screens/login.dart';
import 'package:bolisati/presentation/domestic/screens/domestic.place.order.screen.dart';
import 'package:bolisati/presentation/educational/screen/educational.place.order.screen.dart';
import 'package:bolisati/presentation/landing/screens/landing.dart';
import 'package:bolisati/presentation/medical/screens/medical.place.order_screen.dart';
import 'package:bolisati/presentation/personal/screens/personal.place.order.screen.dart';
import 'package:bolisati/presentation/pet/screens/pet.place.order.screen.dart';
import 'package:bolisati/presentation/retirement/screens/retirment.place.order.screen.dart';
import 'package:bolisati/presentation/screens/profile_screen.dart';
import 'package:bolisati/presentation/travel/screen/travel.place.order.screen.dart';
import 'package:bolisati/presentation/vehicle/screens/motor.place.order_screen.dart';

import 'package:bolisati/router/guard.dart';

import '../presentation/screens/homescreen.dart';
import '../presentation/screens/insuranceslist_screen.dart';
import '../presentation/screens/user.insurances_screen.dart';

@MaterialAutoRouter(routes: [
  CustomRoute(
      page: LandingScreen,
      guards: [AuthGuard],
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500),
  MaterialRoute(page: HomePage, initial: true),
  MaterialRoute(page: MyApp),
  MaterialRoute(page: HomeScreen),
  CustomRoute(
      page: InsuranceListScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: UserInsuranceListScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: PetPlaceOrderScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: ProfileScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: LoginScreen,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      durationInMilliseconds: 500),
  CustomRoute(
      page: PersonalPlaceOrderScreen,
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
      page: EducationalPlaceOrderScreen,
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
