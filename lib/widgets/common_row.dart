import 'package:flutter/material.dart';

class CommonRow extends StatefulWidget {
  const CommonRow({super.key});

  @override
  State<CommonRow> createState() => _CommonRowState();
}

class _CommonRowState extends State<CommonRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Items'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // Add your action here
          },
        ),
      ],
    );
  }
}
