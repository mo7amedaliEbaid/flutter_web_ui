import 'package:flutter/material.dart';
import 'package:flutter_web_ui/widgets/grid_item.dart';

import '../configs/app_dimensions.dart';
import '../responsive/responsive_grid.dart';

class CommonGrid extends StatefulWidget {
  const CommonGrid({super.key});

  @override
  State<CommonGrid> createState() => _CommonGridState();
}

class _CommonGridState extends State<CommonGrid> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.normalize(20),
        //   vertical: AppDimensions.normalize(7),
      ),
      gridDelegate: ResponsiveGridDelegate(
        maxCrossAxisExtent: 300,
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
