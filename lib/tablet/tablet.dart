import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../configs/app_dimensions.dart';
import '../configs/space.dart';
import '../desktop/desktop.dart';
import '../gen/assets.gen.dart';
import '../widgets/common_grid.dart';
import '../widgets/common_row.dart';
import '../widgets/tabs_row.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    log("MediaQuery.of(context).size.width.toString()");
    log(MediaQuery.of(context).size.width.toString());
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
                    SvgPicture.asset(Assets.svg.menu),
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
