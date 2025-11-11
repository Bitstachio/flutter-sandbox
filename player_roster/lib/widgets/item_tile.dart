import 'package:flutter/material.dart';
import '../models/item_model.dart';

// Note: I added unnecessary comments to explain the code for my group mates
class ItemTile extends StatelessWidget {
  final Item item; // Item data to display
  final VoidCallback onTap; // Callback when the tile is tapped

  // Constructor with required parameters
  const ItemTile({Key? key, required this.item, required this.onTap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ), // Link: https://api.flutter.dev/flutter/painting/EdgeInsets-class.html
      child: InkWell(
        // InkWell: makes the card tappable with ripple effect
        onTap: onTap, // Callback when the tile is tapped
        child: Padding(
          // Padding inside the card
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // Horizontal layout for image and text
            children: [
              // Array because Row takes multiple children
              ClipRRect(
                // ClipRRect: to give the image rounded corners
                borderRadius: BorderRadius.circular(8),
                child: item.thumbUrl.isNotEmpty
                    ? Image.asset(
                        // Image from assets
                        item.thumbUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stack) => Container(
                          // Placeholder on error
                          width: 80,
                          height: 80,
                          color: Colors.grey[200],
                          child: const Icon(
                            Icons.broken_image,
                            size: 32,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    : Container(
                        // Placeholder when thumbUrl is empty
                        width: 80,
                        height: 80,
                        color: Colors.grey[200],
                        child: const Icon(
                          Icons.image,
                          size: 32,
                          color: Colors.grey,
                        ),
                      ),
              ),
              const SizedBox(width: 12), // Spacing between image and text
              Expanded(
                // Expanded: to make text take remaining space
                child: Column(
                  // Column: to stack text vertically
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to start
                  mainAxisSize: MainAxisSize.min, // Minimize vertical space
                  children: [
                    // Array of text widgets
                    Text(
                      // Title text
                      item.title.isNotEmpty ? item.title : 'Untitled',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ), // Spacing between title and description
                    Text(
                      // Description text
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
