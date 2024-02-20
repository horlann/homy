import 'package:flutter/cupertino.dart';

import 'device_constants.dart';

extension SizeExtension on BuildContext {
  bool get isUltraSmallDevice =>
      MediaQuery.of(this).size.height <= DeviceConstants.smallestPhoneHeight;

  bool get isSmallDevice =>
      MediaQuery.of(this).size.height <= DeviceConstants.smallPhoneHeight;
}
