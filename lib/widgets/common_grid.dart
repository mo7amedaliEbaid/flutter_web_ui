import 'package:flutter/material.dart';

import '../responsive/responsive_grid.dart';

class CommonGrid extends StatefulWidget {
  const CommonGrid({super.key});

  @override
  State<CommonGrid> createState() => _CommonGridState();
}

class _CommonGridState extends State<CommonGrid> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveGridView(
        padding: EdgeInsets.all(16),
        gridDelegate: ResponsiveGridDelegate(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        children: List.generate(20, (index) {
          return Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          );
        }),
      ),
    );
  }
}
