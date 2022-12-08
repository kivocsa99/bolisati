import 'package:auto_route/auto_route.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'router/app_route.gr.dart' as app_router;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.white));

  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = app_router.AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Bolisati",
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final offset = useState(const Offset(2, 0));
    final changeOffset = useMemoized(() => Future.delayed(
        const Duration(milliseconds: 300),
        () => offset.value = offset.value - const Offset(1.2, 0)));
    useFuture(changeOffset);
    return LayoutBuilder(builder: (context, dimentions) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Container(
              width: 200,
              height: 50,
              color: Colors.white,
              child: Stack(children: [
                AnimatedSlide(
                  duration: const Duration(milliseconds: 1000),
                  offset: offset.value,
                  onEnd: () {
                    context.router
                        .replaceAll([LandingScreen(constraints: dimentions)]);
                  },
                  child: Image.asset("assets/logo.png"),
                ),
                Positioned(right: 50, child: Image.asset("assets/bolisati.png"))
              ]),
            ),
          ),
        ),
      );
    });
  }
}
