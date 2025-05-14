import 'package:flutter/material.dart';
import 'package:flutter_web_ui/responsive/break_points_enum.dart';
import 'package:flutter_web_ui/responsive/responsive_extension.dart';
import 'package:flutter_web_ui/tablet/tablet.dart';

import 'configs/app.dart';
import 'desktop/desktop.dart';
import 'mobile/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Ui',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Builder(builder: (context) {
      final breakpoint = context.breakpoint;
      if (breakpoint.name == ResponsiveBreakpoint.mobile.name) {
        return const MobileView();
      } else if (breakpoint.name == ResponsiveBreakpoint.tablet.name) {
        return const TabletView();
      } else if (breakpoint.name == ResponsiveBreakpoint.desktop.name) {
        return const DesktopView();
      } else {
        return const MobileView();
      }
    });
  }
}
