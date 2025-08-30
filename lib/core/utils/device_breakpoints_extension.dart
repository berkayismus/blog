import 'package:flutter/material.dart';

extension DeviceBreakpointsExtension on BuildContext {
  bool get isMobile {
    return MediaQuery.of(this).size.width < 768;
  }
}
