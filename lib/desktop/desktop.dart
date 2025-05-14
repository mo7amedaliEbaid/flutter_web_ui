import 'package:flutter/material.dart';
import 'package:flutter_web_ui/widgets/common_grid.dart';

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
          Row(
            children: [],
          ),
          CommonGrid(),
        ],
      ),
    );
  }
}
