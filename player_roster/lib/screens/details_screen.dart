import 'package:flutter/material.dart';

import '../models/item_model.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;

  const DetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Center(child: Text('Details for ${item.title}')),
    );
  }
}
