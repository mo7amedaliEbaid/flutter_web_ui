import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../configs/app_dimensions.dart';
import '../configs/space.dart';
import '../desktop/desktop.dart';
import '../gen/assets.gen.dart';
import '../responsive/responsive_grid.dart';
import '../widgets/common_row.dart';
import '../widgets/grid_item.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.normalize(10),
              vertical: AppDimensions.normalize(7),
            ).copyWith(
                //   top: AppDimensions.normalize(0),
                //  bottom: AppDimensions.normalize(3),
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.svg.menu),
                    Space.xf(.8),
                    SvgPicture.asset(Assets.svg.logo),
                  ],
                ),
                Row(
                  children: [
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
                    /*    Space.xf(.7),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),*/
                    /*   Space.xf(.3),
                    SvgPicture.asset(Assets.svg.chevronDown)*/
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
                        horizontal: AppDimensions.normalize(10),
                        vertical: AppDimensions.normalize(7),
                      ),
                      child: MobileRow(),
                    ),
                    MobileGrid(),
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

class MobileGrid extends StatefulWidget {
  const MobileGrid({super.key});

  @override
  State<MobileGrid> createState() => _MobileGridState();
}

class _MobileGridState extends State<MobileGrid> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
          //    horizontal: AppDimensions.normalize(7),
          //   vertical: AppDimensions.normalize(7),
          ),
      gridDelegate: ResponsiveGridDelegate(
        maxCrossAxisExtent: 800,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: .8,
      ),
      children: List.generate(8, (index) {
        return GridItem(
          assetPath: gridAssets[index],
        );
      }),
    );
  }
}

class GridItem1 extends StatefulWidget {
  const GridItem1({super.key, required this.assetPath});
  final String assetPath;

  @override
  State<GridItem1> createState() => _GridItem1State();
}

class _GridItem1State extends State<GridItem1> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.assetPath,
      fit: BoxFit.cover,
    );
  }
}
