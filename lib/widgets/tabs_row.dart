import 'package:flutter/material.dart';

import '../configs/app_dimensions.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  final List<String> tabs = ['Items', 'Pricing', 'Info', 'Tasks', 'Analytics'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tabs.asMap().entries.map((entry) {
        final index = entry.key;
        final label = entry.value;
        final isSelected = index == selectedIndex;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.normalize(5)),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: AppDimensions.normalize(10)),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 2,
                  width: isSelected ? 50 : 0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2C984), // Light yellow underline
                    borderRadius: BorderRadius.circular(1),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
