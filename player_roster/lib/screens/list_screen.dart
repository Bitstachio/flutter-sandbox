import 'package:flutter/material.dart';

import '../data/sample_items.dart';
import '../widgets/item_tile.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Player Roster')),
      body: ListView.builder(
        // Using ListView.builder for efficient list rendering (mentioned in lab description)
        itemBuilder: (context, index) {
          final item = sampleItems[index]; // Get item from sample data
          return ItemTile(
            // For each item, use the ItemTile widget
            item: item,
            onTap: () {
              // TODO: Navigate to detail screen (not implemented yet)
              // For now, just show a snackbar
              // In case you want to learn about SnackBar, check out: https://docs.flutter.dev/cookbook/design/snackbars
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Detail screen not implemented yet'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
