import 'package:flutter/material.dart';
import 'package:memos_app/utilities/navigaton_manager.dart';
import 'package:memos_app/utilities/nofication_manager.dart';
import 'package:get/get.dart';
import 'package:memos_app/constants/theme-constants.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  NotificationManager().initNotifications();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Math App',
      theme: ThemesList.light,
      darkTheme: ThemesList.dark,
      debugShowCheckedModeBanner: false,
      routeInformationProvider: NavigationManager.router.routeInformationProvider,
      routerDelegate: NavigationManager.router.routerDelegate,
      routeInformationParser: NavigationManager.router.routeInformationParser,
    );
  }
}

//HomePage(
//themeMode: themeMode,
//changeTheme: () {
//setState(() {
//themeMode =
//themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
//NotificationManager().simpleNotificationShow();
//});
//},
//),
