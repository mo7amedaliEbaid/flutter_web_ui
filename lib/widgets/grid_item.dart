import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';

List<String> gridAssets = [
  Assets.png.card1.path,
  Assets.png.card2.path,
  Assets.png.card3.path,
  Assets.png.card1.path,
  Assets.png.card2.path,
  Assets.png.card3.path,
  Assets.png.card1.path,
  Assets.png.card2.path,
];

class GridItem extends StatefulWidget {
  const GridItem({super.key, required this.assetPath});
  final String assetPath;

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.assetPath);
  }
}
