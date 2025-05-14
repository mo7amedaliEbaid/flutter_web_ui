import 'package:flutter/material.dart';

import '../widgets/common_grid.dart';

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
          Row(
            children: [],
          ),
          CommonGrid(),
        ],
      ),
    );
  }
}
