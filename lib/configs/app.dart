import 'package:flutter/material.dart';

import 'app_dimensions.dart';
import 'app_typography.dart';
import 'space.dart';
import 'ui.dart';

class App {
  static bool? isLtr;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init(context);
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
