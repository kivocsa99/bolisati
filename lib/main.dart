import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/auth/ali_api/use_cases/update/update_use_case.dart';
import 'package:bolisati/application/auth/ali_api/use_cases/update/update_use_case.input.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:bolisati/router/guard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'firebase_options.dart';
import 'router/app_route.gr.dart' as app_router;

//phone number edit with zero
//por and
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupFlutterNotifications();
  showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
}

/// Create a [AndroidNotificationChannel] for heads up notifications
late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;

Future<void> setupFlutterNotifications() async {
  if (isFlutterLocalNotificationsInitialized) {
    return;
  }
  channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  /// Create an Android Notification Channel.
  ///
  /// We use this channel in the `AndroidManifest.xml` file to override the
  /// default FCM channel to enable heads up notifications.
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  /// Update the iOS foreground notification presentation options to allow
  /// heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  isFlutterLocalNotificationsInitialized = true;
}

void showFlutterNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null && !kIsWeb) {
    flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          // TODO add a proper drawable resource to android, for now using
          //      one that already exists in example app.
          icon: 'launch_background',
        ),
      ),
    );
  }
}

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    sound: true,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  if (!kIsWeb) {
    await setupFlutterNotifications();
  }
  await Hive.initFlutter();
  final user = await Hive.openBox("setting");
  final car = await Hive.openBox("car");
  final medical = await Hive.openBox("medical");
  final travel = await Hive.openBox("travel");
  final retire = await Hive.openBox("retirement");
  final pet = await Hive.openBox("pet");
  final domestic = await Hive.openBox("domestic");
  final education = await Hive.openBox("educational");
  final personal = await Hive.openBox("personal");

  await car.clear();
  await medical.clear();
  await education.clear();
  await pet.clear();
  await travel.clear();
  await domestic.clear();
  await retire.clear();
  await personal.clear();
  var token = await FirebaseMessaging.instance.getToken();
  print(user.values);
  await user.put("fcmtoken", token);

  FirebaseMessaging.instance.onTokenRefresh.listen((value) async {
    token = value;
    return await user.put("fcmtoken", value);
  });
  runApp(ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = app_router.AppRouter(authGuard: AuthGuard());
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      title: "Bolisati",
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box user = Hive.box("setting");
    final offset = useState(const Offset(2, 0));
    final changeOffset = useMemoized(() async => await Future.delayed(
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
                    if (user.get("firsttime") != null) {
                      print(user.get("name"));
                      ref
                          .read(updateuserprovider)
                          .execute(UpdateUserInput(
                            urlvalue: "fcm_token",
                            token: user.get("apitoken"),
                            value: user.get("fcmtoken"),
                          ))
                          .then((value) => value.fold(
                              (l) => ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l.toString()))),
                              (r) async => await context.router.replaceAll(
                                  [LandingScreen(constraints: dimentions)])));
                    } else {
                      context.router
                          .replaceAll([LandingScreen(constraints: dimentions)]);
                    }
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
