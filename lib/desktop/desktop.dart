import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_ui/configs/configs.dart';
import 'package:flutter_web_ui/widgets/common_grid.dart';
import 'package:flutter_web_ui/widgets/tabs_row.dart';

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
              //  vertical: AppDimensions.normalize(7),
            ).copyWith(
              top: AppDimensions.normalize(0),
              //  bottom: AppDimensions.normalize(3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(Assets.svg.logo),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: AppDimensions.normalize(8),
                      ),
                      child: Row(
                        children: [
                          CustomTabBar(),
                          //   Space.xf(),
                        ],
                      ),
                    ),
                    Container(
                      height: AppDimensions.normalize(10),
                      width: .5,
                      padding: EdgeInsets.only(bottom: 70),
                      color: Color(0xff484848),
                    ),
                    Space.xf(),
                    SvgPicture.asset(Assets.svg.setting),
                    Space.xf(),
                    SvgPicture.asset(Assets.svg.notification),
                    Space.xf(),
                    Container(
                      height: AppDimensions.normalize(10),
                      width: .5,
                      padding: EdgeInsets.only(bottom: 70),
                      color: Color(0xff484848),
                    ),
                    Space.xf(),
                    Image.asset(
                      Assets.png.johnDoe.path,
                      height: AppDimensions.normalize(10),
                    ),
                    Space.xf(.7),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    Space.xf(.3),
                    SvgPicture.asset(Assets.svg.chevronDown)
                  ],
                ),
              ],
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
                        //  vertical: AppDimensions.normalize(7),
                      ).copyWith(
                        top: AppDimensions.normalize(7),
                        bottom: AppDimensions.normalize(9),
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
