
import 'deeplink_config.dart';

enum Flavor { dev, prod, staging }

abstract class EnvironmentConfig {
  DeeplinkConfig get deeplinkConfig;

  Flavor get flavor;
}

class EnvironmentConfigDev implements EnvironmentConfig {
  @override
  DeeplinkConfig get deeplinkConfig => DeeplinkConfigDev();

  @override
  Flavor get flavor => Flavor.dev;
}

class EnvironmentConfigProd implements EnvironmentConfig {
  @override
  DeeplinkConfig get deeplinkConfig => DeeplinkConfigProd();

  @override
  Flavor get flavor => Flavor.prod;
}

class EnvironmentConfigStaging implements EnvironmentConfig {
  @override
  DeeplinkConfig get deeplinkConfig => DeeplinkConfigStaging();

  @override
  Flavor get flavor => Flavor.staging;
}
