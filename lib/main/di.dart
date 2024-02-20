import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:homyyy/core/cache/shared_preferences/shared_preferences.dart';
import 'package:homyyy/core/cache/shared_preferences/shared_preferences_impl.dart';
import 'package:homyyy/core/configs/environment_config.dart';
import 'package:shared/logger/i_logger_service.dart';
import 'package:shared/logger/logger_service.dart';
import 'package:shared/services/notifications/di.dart';
import 'package:shared/services/notifications/services/push_notifications_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/di.dart';
import '../features/splash/di.dart';

final di = GetIt.instance;

class ApplicationDependenciesResolver {
  Future<void> resolve({
    required EnvironmentConfig environmentConfig,
  }) async {
    registerLogger();
    await registerNetworkClients();
    await registerSharedPreferences();
    registerServiceDependencies();
    _common(environmentConfig);
    _features(environmentConfig: environmentConfig);
  }

  Future<void> registerNetworkClients() async {
    // di.registerSingleton<Dio>(
    //   GooglePlacesDioBuilder.getDio(),
    //   instanceName: GooglePlacesDioBuilder.instanceKey,
    // );
  }

  void registerServiceDependencies() {
    di.registerSingleton<Connectivity>(
      Connectivity(),
    );
  }

  Future<void> registerSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    di.registerSingleton<SharedPrefs>(
      SharedPrefsImpl(prefs),
    );
  }

  void registerLogger() {
    di.registerSingleton<ILoggerService>(LoggerService());
  }

  void _common(EnvironmentConfig environmentConfig) {
    di.registerSingleton<EnvironmentConfig>(environmentConfig);
  }

  void _features({
    required EnvironmentConfig environmentConfig,
  }) {
    SplashFeatureDependenciesResolver.resolve();
    AuthFeatureDependenciesResolver.resolve();
  }
}
