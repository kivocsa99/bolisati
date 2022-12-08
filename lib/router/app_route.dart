import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/main.dart';
import 'package:bolisati/presentation/landing/screens/landing.dart';

@MaterialAutoRouter(routes: [
  CustomRoute(
      page: LandingScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 500),
  MaterialRoute(page: HomePage, initial: true)
], replaceInRouteName: "Page,Route")
class $AppRouter {}
