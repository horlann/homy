// Flutter imports:
// Project imports:
import 'package:flutter/cupertino.dart';
import 'package:shared/ui/utils/device_constants.dart';

extension SizeExtension on BuildContext {
  bool get isUltraSmallDevice =>
      MediaQuery.of(this).size.height <= DeviceConstants.smallestPhoneHeight;

  bool get isSmallDevice =>
      MediaQuery.of(this).size.height <= DeviceConstants.smallPhoneHeight;
}
