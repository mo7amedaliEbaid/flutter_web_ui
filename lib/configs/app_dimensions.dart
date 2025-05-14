import 'dart:developer';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'ui.dart';

class AppDimensions {
  static double? maxContainerWidth;
  static double? miniContainerWidth;

  static bool? isLandscape;
  static double? padding;
  static double ratio = 0;

  static Size? size;

  static void init(BuildContext context) {
    UI.init(context); // Make sure UI is initialized

    // Calculate the aspect ratio and pixel density
    ratio = UI.width! / UI.height!;
    double pixelDensity = UI.mediaQuery().devicePixelRatio;
    ratio = (ratio) + ((pixelDensity + ratio) / 2);

    // Adjust ratio for small screens with high pixel density
    if (UI.width! <= 380 && pixelDensity >= 3) {
      ratio *= 0.85;
    }

    _initLargeScreens();
    _initSmallScreensHighDensity();

    // Apply padding based on ratio
    padding = ratio * 3;
    log(padding.toString());
    log("padding.toString()");
  }

  static _initLargeScreens() {
    const safe = 2.4;

    ratio *= 1.5;

    if (ratio > safe) {
      ratio = safe;
    }
  }

  static _initSmallScreensHighDensity() {
    if (!UI.sm! && ratio > 2.0) {
      ratio = 2.0;
    }
    if (!UI.xs! && ratio > 1.6) {
      ratio = 1.6;
    }
    if (!UI.xxs! && ratio > 1.4) {
      ratio = 1.4;
    }
  }

  static String inString() {
    final x = UI.width! / UI.height!;
    final ps = ui.window.physicalSize;
    return """
      Width: ${UI.width} | ${ps.width}
      Height: ${UI.height} | ${ps.height}
      app_ratio: $ratio
      ratio: $x
      pixels: ${UI.mediaQuery().devicePixelRatio}
    """;
  }

  // Scale spacing using padding multiplier
  static double space([double multiplier = 1.0]) {
    return AppDimensions.padding! * 3 * multiplier;
  }

  // Normalize width/height scaling for better fit across devices
  static double normalize(double unit) {
    return (AppDimensions.ratio * unit * 0.77) + unit;
  }

  // Directly scale font size based on the device's screen size
  static double font(double unit) {
    // Using height as a base to scale fonts
    double baseWidth = 375; // Base height (e.g., iPhone X design)
    return (unit / baseWidth) * UI.width!;
  }
}
