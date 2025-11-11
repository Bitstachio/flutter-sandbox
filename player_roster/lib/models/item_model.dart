class Item {
  final String title;
  final String thumbUrl;
  final String imageUrl;
  final String description;

  const Item({
    required this.title,
    required this.thumbUrl,
    required this.imageUrl,
    required this.description,
  });

  @override
  String toString() => 'Item(title: $title)';
}
