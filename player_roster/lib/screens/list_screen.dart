import 'package:flutter/material.dart';

import '../data/sample_items.dart';
import '../widgets/item_tile.dart';
import 'details_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Player Roster')),
      body: ListView.builder(
        // Using ListView.builder for efficient list rendering (mentioned in lab description)
        itemCount: sampleItems
            .length, // Number of items in the list - it should match the sample data length
        itemBuilder: (context, index) {
          final item = sampleItems[index]; // Get item from sample data
          return ItemTile(
            // For each item, use the ItemTile widget
            item: item,
            onTap: () {
              // Navigate to detail screen
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(item: item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
