import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homyyy/core/routing/app_router.dart';
import 'package:homyyy/core/routing/observers/main_navigation_observer.dart';
import 'package:homyyy/main/di.dart';
import 'package:shared/logger/i_logger_service.dart';

class HomyyyApp extends StatefulWidget {
  const HomyyyApp({super.key});

  @override
  State<HomyyyApp> createState() => _HomyyyAppState();
}

class _HomyyyAppState extends State<HomyyyApp> {
  final router = AppRouter();

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // dark text for status bar
        statusBarColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('uk'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('uk'),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Flowerpot Courier',
            theme: ThemeData(useMaterial3: false),
            locale: context.deviceLocale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            debugShowCheckedModeBanner: false,
            routerConfig: router.config(
              navigatorObservers: () =>
                  [MainNavigationObserver(di.get<ILoggerService>())],
            ),
          );
        },
      ),
    );
  }
}
