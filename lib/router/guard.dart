import 'package:auto_route/auto_route.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthGuard extends AutoRouteGuard {
  final BoxConstraints? constraints;
  final Box settingBox = Hive.box('setting');

  AuthGuard({this.constraints});
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (settingBox.get('login') == null || false) {
      resolver.next(true);

      // if user is authenticated we continue
    } else {
      router.replaceAll([const HomeScreen()]);

      // we redirect the user to our login page
      // resolver.next(true);
    }
  }
}
