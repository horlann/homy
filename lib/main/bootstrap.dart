//ignore_for_file:unreachable_from_main
import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homyyy/core/configs/environment_config.dart';

import 'di.dart';

/// Bootstrap is responsible for any common setup and calls
/// [runApp] with the widget returned by [builder]
Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
  EnvironmentConfig config,
) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await ApplicationDependenciesResolver().resolve(
    environmentConfig: config,
  );
  runApp(await builder());
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {}
