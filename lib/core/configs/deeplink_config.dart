abstract class DeeplinkConfig {
  String get deepLinkSchema;

  String get deepLinkUrl;
}

class DeeplinkConfigDev extends DeeplinkConfig {
  @override
  String get deepLinkSchema => 'https';

  @override
  String get deepLinkUrl => '';
}

class DeeplinkConfigProd extends DeeplinkConfig {
  @override
  String get deepLinkSchema => 'https';

  @override
  String get deepLinkUrl => '';
}

class DeeplinkConfigStaging extends DeeplinkConfig {
  @override
  String get deepLinkSchema => 'https';

  @override
  String get deepLinkUrl => '';
}
