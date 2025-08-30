import 'package:flutter/material.dart';

extension DeviceHelperExtension on BuildContext {
  bool get isMobile {
    return MediaQuery.of(this).size.width < 768;
  }
}
