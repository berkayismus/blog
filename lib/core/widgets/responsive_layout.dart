import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  static const int _tabletBreakpoint = 768;
  static const int _desktopBreakpoint = 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= _desktopBreakpoint && desktop != null) {
          return desktop!;
        } else if (constraints.maxWidth >= _tabletBreakpoint &&
            tablet != null) {
          return tablet!;
        } else {
          return mobile;
        }
      },
    );
  }
}
