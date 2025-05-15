import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_ui/configs/configs.dart';
import 'package:flutter_web_ui/widgets/common_grid.dart';

import '../gen/assets.gen.dart';
import '../widgets/common_row.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override to allow mouse, touch, etc.
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.normalize(20),
              vertical: AppDimensions.normalize(7),
            ),
            child: Row(
              children: [SvgPicture.asset(Assets.svg.logo)],
            ),
          ),
          Divider(
            color: Color(0xff262626),
            height: 0,
            indent: 0,
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.normalize(20),
                        vertical: AppDimensions.normalize(7),
                      ),
                      child: CommonRow(),
                    ),
                    CommonGrid(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
