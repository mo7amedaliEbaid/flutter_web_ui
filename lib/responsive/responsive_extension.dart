import 'package:flutter/material.dart';

import 'break_points_enum.dart';

extension ResponsiveExtension on BuildContext {
  ResponsiveBreakpoint get breakpoint {
    final width = MediaQuery.of(this).size.width;
    if (width >= 1024) {
      return ResponsiveBreakpoint.desktop;
    } else if (width >= 600) {
      return ResponsiveBreakpoint.tablet;
    } else {
      return ResponsiveBreakpoint.mobile;
    }
  }
}
