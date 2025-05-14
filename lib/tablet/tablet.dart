import 'package:flutter/material.dart';

import '../widgets/common_grid.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [],
          ),
          CommonGrid(),
        ],
      ),
    );
  }
}
