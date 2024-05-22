class Product {
  final String title;
  bool isLiked;
  final bool isNew;
  final double price;
  final String address;
  final String imageUrl;

  Product({
    required this.title,
    this.isLiked = false,
    required this.isNew,
    required this.price,
    required this.address,
    required this.imageUrl,
  });
}
